from django.http import HttpResponse, JsonResponse
from django.views.decorators.csrf import csrf_exempt
# from django.db import connection
from rest_framework import viewsets
from rest_framework import status
# from rest_framework.renderers import JSONRenderer
from rest_framework.parsers import JSONParser
from .serializers import *


class ItemViewSet(viewsets.ModelViewSet):
    @csrf_exempt
    def all_items(self, request):
        if request.method == 'GET':
            items = AllItems.objects.all()
            serializer = AllItemSerializer(items, many=True)
            return JsonResponse(serializer.data, safe=False)

    @csrf_exempt
    def specific_item(self, request, pk):
        if request.method == 'GET':
            item = AllItems.objects.get(pk)
            serializer = AllItemSerializer(item)
            return JsonResponse(serializer.data, safe=False)

    @csrf_exempt
    def items_by_type(self, request, item_type):
        if request.method == 'GET':
            items = AllItems.objects.all().filter(item_type=item_type)
            serializer = AllItemSerializer(items, many=True)
            return JsonResponse(serializer.data, safe=False)


class RigViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows rigs to be viewed or edited.
    """
    @csrf_exempt
    def specific_rig(self, request, pk):
        try:
            rig = Rigs.objects.get(pk)
        except Rigs.DoesNotExist:
            return HttpResponse(status=status.HTTP_404_NOT_FOUND)
        if request.method == 'GET':
            serializer = RigSerializer(rig)
            return JsonResponse(serializer.data, safe=False)

        elif request.method == 'POST':
            data = JSONParser().parse(request)
            serializer = RigSerializer(data=data)

            if serializer.is_valid():
                serializer.save()
                return JsonResponse(serializer.data, status=status.HTTP_201_CREATED)
            return JsonResponse(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    @csrf_exempt
    def rig_detail(self, request, pk):
        try:
            rig = RigViewSet.queryset.get(pk=pk)
        except Rigs.DoesNotExist:
            return HttpResponse(status=404)
        if request.method == 'GET':
            serializer = RigSerializer(rig)
            return JsonResponse(serializer.data)

        elif request.method == 'PUT':
            data = JSONParser().parse(request)
            serializer = RigSerializer(rig, data=data)

            if serializer.is_valid():
                serializer.save()
                return JsonResponse(serializer.data)
            return JsonResponse(serializer.errors, status=400)

        elif request.method == 'DELETE':
            rig.delete()
            return HttpResponse(status=204)


class EmployeeVsSignoutViewSet(viewsets.ViewSet):
    @csrf_exempt
    def all_signout_records(self, request):
        queryset = EmployeesVsSignouts.objects.all()
        if request.method == 'GET':
            serializer = EmployeeVsSignoutSerializer(queryset, many=True)
            return JsonResponse(serializer.data, safe=False)

    @csrf_exempt
    def student_signout_records(self, request):
        queryset = EmployeesVsSignoutsStudent.objects.all()
        serializer_class = EmployeeVsSignoutSerializer
        if request.method == 'GET':
            serializer = serializer_class(queryset, many=True)
            return JsonResponse(serializer.data, safe=False)

        elif request.method == 'POST':
            serializer = EmployeeVsSignoutSerializer(data=request.data)
            if serializer.is_valid():
                serializer.save()
                return HttpResponse(status=status.HTTP_201_CREATED)
            return HttpResponse(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    @csrf_exempt
    def tandem_signout_records(self, request):
        queryset = EmployeesVsSignoutsTandem.objects.all()
        if request.method == 'GET':
            serializer = EmployeeVsSignoutSerializer(queryset, many=True)
            return JsonResponse(serializer.data, safe=False)

    @csrf_exempt
    def specific_signout(self, request, pk):
        queryset = EmployeesVsSignouts.objects.all()
        try:
            signout = queryset.get(pk=pk)
        except EmployeesVsSignouts.DoesNotExist:
            return HttpResponse(status=status.HTTP_404_NOT_FOUND)

        if request.method == 'GET':
            serializer = EmployeeVsSignoutSerializer(signout)
            return JsonResponse(serializer.data)

        elif request.method == 'PUT':
            serializer = EmployeeVsSignoutSerializer(signout, data=request.data)
            if serializer.is_valid():
                serializer.save()
                return HttpResponse(status=status.HTTP_202_ACCEPTED)

    @csrf_exempt
    def new_signout(self, request):
        if request.method == 'POST':
            '''
            cursor = connection.cursor()
            ret = cursor.callproc("new_signout")
            '''
            serializer = EmployeeVsSignoutSerializer(data=request.data)
            if serializer.is_valid():
                serializer.save()
                return HttpResponse(status=status.HTTP_201_CREATED)
            return HttpResponse(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class EmployeeViewSet(viewsets.ModelViewSet):

    @csrf_exempt
    def all_employees(self, request):
        if request.method == 'GET':
            emps = Employees.objects.all()
            serializer = EmployeeSerializer(emps, many=True)
            return JsonResponse(serializer.data, safe=False)

        elif request.method == 'POST':
            serializer = EmployeeSerializer(data=request.data)
            if serializer.is_valid():
                serializer.save()
                return HttpResponse(status=status.HTTP_201_CREATED)
        return HttpResponse(status=status.HTTP_400_BAD_REQUEST)

    @csrf_exempt
    def specific_employee(self, request, pk):
        try:
            emp = Employees.objects.get(pk)
        except Employees.DoesNotExist:
            return HttpResponse(status=status.HTTP_404_NOT_FOUND)

        if request.method == 'GET':
            serializer = EmployeeSerializer(emp)
            return JsonResponse(serializer.data)

        elif request.method == 'PUT':
            serializer = EmployeeSerializer(request.data)
            if serializer.is_valid():
                serializer.save()
                return HttpResponse(status=status.HTTP_202_ACCEPTED)
            return HttpResponse(status=status.HTTP_400_BAD_REQUEST)

        elif request.method == 'DELETE':
            emp.delete()
            return HttpResponse(status=status.HTTP_204_NO_CONTENT)
