import base64,time,random,math
from cryptography.fernet import Fernet
from cryptography.hazmat.backends import default_backend
from cryptography.hazmat.primitives.asymmetric import dsa, rsa
from cryptography.hazmat.backends import default_backend
from cryptography.hazmat.primitives.asymmetric import rsa
from cryptography.hazmat.primitives import hashes
from cryptography.hazmat.primitives.asymmetric import padding
p = padding.OAEP(mgf=padding.MGF1(algorithm=hashes.SHA256()),algorithm=hashes.SHA256(),label=None)
#private_key=rsa.generate_private
def splitup(word):
    x = []
    for j in word:
        x.append(j)
    random.shuffle(x)
    return x
def stitch(list):
    str = ''
    for i in list:
        str += i
    return str
class Key:
    class RSAKey:
        def __init__(self,p,q):
            #self.name=name
            
            self.n = p*q
            #del(self.secret)
    class Key:
        def __init__(self):
            self.secret = Fernet.generate_key()
        def encrypt(self,data):
            k = Fernet(self.secret)
            return k.encrypt(data)
        
        def decrypt(self,data):
            k = Fernet(self.secret)
            return k.decrypt(data)
def prime(n):
    print('checking')
    isprime=True
    for x in range(2, int(math.sqrt(n) + 1)):
        if n % x == 0:
            isprime=False
    return isprime
def gprime(b=100):
    while True:
        n = random.randrange(2**(b-1),2**b)
        if prime(n):
            return n
        
           
        
            
        
