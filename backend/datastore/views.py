from rest_framework import generics, status
from django.http import JsonResponse
from .serializers import *
from . import util
from django.contrib.auth.decorators import login_required
from django.contrib.auth import get_user_model, login, logout, authenticate
from django.contrib.auth import views as auth_views
import datetime
from django.core.mail import send_mail



@login_required()
class AADList(generics.ListCreateAPIView):
    queryset = AutomaticActivationDevices.objects.all()
    serializer_class = AADSerializer

@login_required()
class AADDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = AutomaticActivationDevices.objects.all()
    serializer_class = AADSerializer

@login_required()
class CanopyList(generics.ListCreateAPIView):
    queryset = Canopies.objects.all()
    serializer_class = CanopySerializer

@login_required()
class CanopyDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Canopies.objects.all()
    serializer_class = CanopySerializer

@login_required()
class ContainerList(generics.ListCreateAPIView):
    queryset = Containers.objects.all()
    serializer_class = ContainerSerializer

@login_required()
class DropzoneList(generics.ListCreateAPIView):
    queryset = Dropzones.objects.all()
    serializer_class = DropZoneSerializer

@login_required()
class DropzoneDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Dropzones.objects.all()
    serializer_class = DropZoneSerializer

@login_required()
class EmployeeEmployeeRoleList(generics.ListCreateAPIView):
    queryset = EmployeesEmployeeRoles.objects.all()
    serializer_class = EmployeeEmployeeRoleSerializer

@login_required()
class EmployeeEmployeeRoleDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = EmployeesEmployeeRoles.objects.all()
    serializer_class = EmployeeEmployeeRoleSerializer

@login_required()
class EmployeeList(generics.ListCreateAPIView):
    queryset = Employees.objects.all()
    serializer_class = EmployeeSerializer

@login_required()
class EmployeeDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Employees.objects.all()
    serializer_class = EmployeeSerializer


class ItemList(generics.ListCreateAPIView):
    queryset = Items.objects.all()
    serializer_class = ItemSerializer

@login_required()
class ItemDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Items.objects.all()
    serializer_class = ItemSerializer

@login_required()
class ItemTypeList(generics.ListCreateAPIView):
    queryset = ItemTypes.objects.all()
    serializer_class = ItemTypeSerializer

@login_required()
class ItemTypeDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ItemTypes.objects.all()
    serializer_class = ItemTypeSerializer

@login_required()
class RentableItemList(generics.ListCreateAPIView):
    queryset = AllItems.objects.all().filter(is_rentable=1)
    serializer_class = AllItemSerializer

@login_required()
class RentalList(generics.ListCreateAPIView):
    queryset = Rentals.objects.all()
    serializer_class = RentalSerializer

@login_required()
class RentalDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Rentals.objects.all()
    serializer_class = RentalSerializer

@login_required()
class ReserveCanopyList(generics.ListCreateAPIView):
    queryset = ReserveCanopies.objects.all()
    serializer_class = ReserveCanopySerializer

@login_required()
class ReserveCanopyDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ReserveCanopies.objects.all()
    serializer_class = ReserveCanopySerializer

@login_required()
class RigList(generics.ListCreateAPIView):
    queryset = Rigs.objects.all()
    serializer_class = RigSerializer

@login_required()
class RigDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Rigs.objects.all()
    serializer_class = RigSerializer

@login_required()
class RigAuditTrailList(generics.ListCreateAPIView):
    queryset = RigsAuditTrail.objects.all()
    serializer_class = RigAuditTrailSerializer

@login_required()
class RigAuditTrailDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = RigsAuditTrail.objects.all()
    serializer_class = RigAuditTrailSerializer

@login_required()
class ClaimList(generics.ListCreateAPIView):
    queryset = Claims.objects.all()
    serializer_class = ClaimSerializer

@login_required()
class ClaimDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Claims.objects.all()
    serializer_class = ClaimSerializer

@login_required()
class SignoutList(generics.ListCreateAPIView):
    queryset = Signouts.objects.all()
    serializer_class = SignoutSerializer

@login_required()
class SignoutDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Signouts.objects.all()
    serializer_class = SignoutSerializer

@login_required()
class AllCanopyList(generics.ListCreateAPIView):
    queryset = AllCanopies.objects.all()
    serializer_class = AllCanopySerializer

@login_required()
class AllCanopyDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = AllCanopies.objects.all()
    serializer_class = AllCanopySerializer

@login_required()
class AllItemList(generics.ListCreateAPIView):
    queryset = AllItems.objects.all()
    serializer_class = AllItemSerializer

@login_required()
class AllItemDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = AllItems.objects.all()
    serializer_class = AllItemSerializer

@login_required()
class EmployeeVsSignoutList(generics.ListAPIView):
    queryset = EmployeesVsSignouts.objects.all()
    serializer_class = EmployeeVsSignoutSerializer

@login_required()
class EmployeeVsSignoutDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = EmployeesVsSignouts.objects.all()
    serializer_class = EmployeeVsSignoutSerializer

@login_required()
class EmployeeVsSignoutStudentList(generics.ListCreateAPIView):
    queryset = EmployeesVsSignoutsStudent.objects.all()
    serializer_class = EmployeeVsSignoutSerializer

@login_required()
class EmployeeVsSignoutStudentDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = EmployeesVsSignoutsStudent.objects.all()
    serializer_class = EmployeeVsSignoutSerializer

    def patch(self, request, *args, **kwargs):
        employee_id = request.data.get('packer_id')
        signout_id = request.data.get('signout_id')
        patch_emp_signout(employee_id, signout_id)

        packed_by = get_emp_full_name(employee_id)
        data = {'packer_id': employee_id, 'packed_by': packed_by}
        return JsonResponse(data=data, status=status.HTTP_202_ACCEPTED)

    def destroy(self, request, *args, **kwargs):
        signout_id = self.kwargs.get('pk')
        # Destroy all EmployeeSignout records related to signout_id
        EmployeesSignouts.objects.filter(signout_id=signout_id).delete()
        # Destroy Signout record
        Signouts.objects.filter(signout_id=signout_id).delete()
        data = {'signout_id': signout_id}
        return JsonResponse(data=data, status=status.HTTP_204_NO_CONTENT)


class EmployeeVsSignoutTandemList(generics.ListCreateAPIView):
    queryset = EmployeesVsSignoutsTandem.objects.all()
    serializer_class = EmployeeVsSignoutSerializer

    def post(self, request, *args, **kwargs):

        employee_id = request.data.get('jumpmaster_id')
        jumpmaster = get_emp_full_name(employee_id)

        post_signout(request)
        post_emp_signout(employee_id)
        ret_data = {'jumpmaster': jumpmaster, 'jumpmaster_id': employee_id}
        return JsonResponse(data=ret_data, status=status.HTTP_201_CREATED)


    def post(self, request, *args, **kwargs):
        employee_id = request.data.get('jumpmaster_id')
        jumpmaster = get_emp_full_name(employee_id)

        post_signout(request)
        post_emp_signout(employee_id)
        ret_data = {'jumpmaster': jumpmaster, 'jumpmaster_id': employee_id}
        return JsonResponse(data=ret_data, status=status.HTTP_201_CREATED)


class EmployeeVsSignoutTandemDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = EmployeesVsSignoutsTandem.objects.all()
    serializer_class = EmployeeVsSignoutSerializer

    def patch(self, request, *args, **kwargs):
        employee_id = request.data.get('packer_id')
        signout_id = request.data.get('signout_id')

        patch_emp_signout(employee_id, signout_id)

        packed_by = get_emp_full_name(employee_id)
        data = {'packer_id': employee_id, 'packed_by': packed_by}
        return JsonResponse(data=data, status=status.HTTP_202_ACCEPTED)


def post_signout(request):
    rig_id = request.data.get('rig_id')
    load_number = request.data.get('load_number')

    Signouts.objects.create(rig_id=rig_id, load_number=load_number)
    return


def post_emp_signout(employee_id):
    signout_id_dict = Signouts.objects.values().get(signout_id=
                                                    Signouts.objects.latest('signout_id')
                                                    .serializable_value('signout_id'))
    signout_id = signout_id_dict.get("signout_id", "")

    EmployeesSignouts.objects.create(signout_id=signout_id,
                                     employee_id=employee_id,
                                     packed_signout=EmployeesSignouts.SIGNOUT,
                                     timestamp=datetime.datetime.now())
    return


def patch_emp_signout(employee_id, signout_id):
    EmployeesSignouts.objects.create(signout_id=signout_id,
                                     employee_id=employee_id,
                                     packed_signout=EmployeesSignouts.PACKED,
                                     timestamp=datetime.datetime.now())

    '''
    data = {'employee_id': employee_id, 'signout_id': signout_id, 'packed_signout': EmployeesSignouts.PACKED,
            'timestamp': datetime.datetime.now()}
    print(data)

    serializer = EmployeeSignoutSerializer(data=data)
    print(serializer.get_fields())
    if serializer.is_valid():
        print(serializer.validated_data)
        # serializer.save()
        return
    print(serializer.is_valid())
    '''
    return


def get_emp_full_name(employee_id):
    emp_name = Employees.objects.get(employee_id=employee_id).first_name + ' ' + \
        Employees.objects.get(employee_id=employee_id).last_name
    return emp_name

def createDropzone(request):

    try :
        username = request.POST['username']
        password = request.POST['password']
        location = request.POST['location']
        email = request.POST['email']
        if email or password or location or username is None :
            return HttpResponse(status=status.HTTP_204_NO_CONTENT)
        else :
            try :
                dropzone = Dropzones.objects.create_user(username=username, password=password, email=email, location=location)
                dropzone.save()
            except :
                return HttpResponse(status=status.HTTP_400_BAD_REQUEST)
            serializer = DropZoneSerializer(data= dropzone)
            return JsonResponse(data=serializer.data, status=status.HTTP_201_CREATED)
    except :
        return HttpResponse(status=status.HTTP_400_BAD_REQUEST)

def loginDropzone(request):
    try :
        username = request.POST['username']
        password = request.POST['password']
        dropzone = authenticate(request=request,username=username,password=password)
        if dropzone is None :
            return HttpResponse(status=status.HTTP_400_BAD_REQUEST)
        else :
            login(request, user=dropzone)
    except :
        return HttpResponse(status=status.HTTP_204_NO_CONTENT)

def logoutDropzone(request):
    logout(request)
    return HttpResponse(status=status.HTTP_202_ACCEPTED)

@login_required()
def createEmployee(request, dropzonePK):
    try:
        dropzone = Dropzones.objects.get(dropzonePK)
        first = request.POST['first_name']
        last = request.POST['last_name']
        email = request.POST['email']
        if Employees.employeeEmailInUse(email) is not None:
            emp = Employees(first_name=first, last_name=last, email=email, dropzone=dropzone)
            emp.save()
            while Employees.employeePinInUse(emp.pin) :
                pin = util.randomUserPin(emp.employee_id)
                emp.pin = Employees.pin_to_hash(pin)
            emp.save()
            serializer = EmployeeSerializer(emp)
            send_mail(
                subject='DropzoneHQ Employee Pin [NO REPLY]',
                message='Your new employee pin is ' + pin,
                from_email='dropzonehqNO-REPLY@dropzonehq.com',
                recipient_list=[emp.email],
                fail_silently=False
            )
            return JsonResponse(data= serializer.data ,status=201)
        else :
            return HttpResponse(status=status.HTTP_400_BAD_REQUEST)
    except:
        return HttpResponse(status=status.HTTP_204_NO_CONTENT)


#authenticate an employee based on their pin and return an http status if the user is authentic
@login_required()
def authenticateUserPin(request):
    if request.method == 'POST' :

        # the way our pin works sets the user primary as their last 3 digits
        try :
            pin = request.POST['pin']

            if pin is None :
                return HttpResponse(status=status.HTTP_204_NO_CONTENT)
            else :
                try :
                    pk = int(pin[4:])
                    employee = Employees.objects.get(pk)
                    if employee is None :
                        return HttpResponse(status=status.HTTP_400_BAD_REQUEST)
                    else :
                        if Employees.check_employee_pin(pin,employee) :
                            return HttpResponse(status=status.HTTP_202_ACCEPTED)
                        else :
                            return HttpResponse(status=status.HTTP_400_BAD_REQUEST)
                except :
                    return HttpResponse(status=status.HTTP_400_BAD_REQUEST)
        except :
            return HttpResponse(status=status.HTTP_204_NO_CONTENT)

    else :
        return HttpResponse(status=status.HTTP_400_BAD_REQUEST)


# Session authentication
def authenticateDropzone(request):
    #todo
    token = request.session
    return False

# return a user object if the username is found
# else return None
def authenticateNameDropzone(request):
    name = request.POST['name']
    if name is None:
        return HttpResponse(status=status.HTTP_400_BAD_REQUEST)
    else:
        dropzone = Dropzones.dropzoneNameInUse(name)
        if dropzone is None :
            return HttpResponse(status=status.HTTP_204_NO_CONTENT)
        else :
            serializer = DropZoneSerializer(dropzone)
            return JsonResponse(data=serializer.data, status=200)



def password_reset(request):
    email = None
    try:
        email = request.POST['email']
    except:
        return HttpResponse(status=status.HTTP_204_NO_CONTENT)

    if email is None :
        return HttpResponse(status=status.HTTP_204_NO_CONTENT)
    else:
        dropzone = Dropzones.dropzoneEmailInUse(email)
        hashs = util.createHash(email)
        temp = TempUrl.objects.create(hashs,datetime.date.today() + datetime.timedelta(days=1))
        message = util.createPasswordResetMessage(temp.get_url_hash())
        Dropzones.email_user(dropzone,
                             "DropzoneHQ Password Reset [NO REPLY]",
                             message=message,
                             from_email='dropzonehqNO-REPLY@dropzonehq.com')
        return HttpResponse(status=status.HTTP_202_ACCEPTED)

@login_required()
def password_reset_employee(request):
    email = None
    try :
        email = request.POST['email']
    except:
        return HttpResponse(status=status.HTTP_204_NO_CONTENT)

    if email is None:
        return HttpResponse(status=status.HTTP_204_NO_CONTENT)
    else:
        employee = Employees.employee_email_in_use(email)
        pin = Employees.create_random_user_pin(employee)
        employee.pin = Employees.pin_to_hash(pin)
        util.createPinResetMessage(employee.pin)
        send_mail(
            subject='DropzoneHQ Employee Pin [NO REPLY]',
            message='Your new employee pin is ' + employee.pin,
            from_email='dropzonehqNO-REPLY@dropzonehq.com',
            recipient_list=[employee.email],
            fail_silently=False
        )
        return HttpResponse(status=status.HTTP_202_ACCEPTED)

def reset_url(request, hash=None):
    try:
        reset = TempUrl.objects.get(hash)
        if reset is None :
            dropzone = reset.dropzone
            Dropzones.set_password(dropzone, request.POST['password'])
            return HttpResponse(status=status.HTTP_204_NO_CONTENT)
        else :
            return HttpResponse(status=status.HTTP_202_ACCEPTED)
    except:
        return HttpResponse(status=status.HTTP_400_BAD_REQUEST)
