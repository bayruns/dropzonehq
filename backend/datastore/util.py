import random
from django.contrib.auth.hashers import BCryptSHA256PasswordHasher

#Dont Look At This
hotdog = 'Dd#12jR@lqe@J%^&rgq!R!$Tpn:Q>E<H:oGkkSVWgkhqB%B$ukmH%^LASDkaushdwl;mfwf12AWF<:%>46ASGWsd;lfl>$%F>@Rlmgfwo;emcvo>!"egDQWEDasdQ>"D"?@hoiwgQWDWK)sc"?:Po'
DEFAULT_SALT = 100

# Employee random generation of 4 digit pin exclusive to dropzone


# Helper method for creating a random user pin
def stringToThree(string=None):
    if string is None:
        return None
    else:
        for x in (3 - len(string)):
            string = '0' + string
        return string

def randomHotdog():
    return hotdog[random.randint(0,75):random.randint(75,150)]

def createHash():
    return BCryptSHA256PasswordHasher.encode(password=randomHotdog(),salt=2)

def createPasswordResetMessage(hash=None):
    return "Please visit dropzonehq.com/temp/" + hash + " to reset your password"