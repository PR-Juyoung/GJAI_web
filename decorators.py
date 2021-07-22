

def decorator(func):
    def decorated():
        print('함수 시작')
        func()
        print('함수 끝!')
    return decorated

@decorator
def hello_world():
    print('Hello World!')

hello_world()




'''
def check_integer(func):
    def decorated(user, width, height):
        if width >= 0 and height >= 0:
            return func(user, width, height)
        else:
            raise ValueError('Input must be positive value')
    return decorated

def login_required(func):
    def decoreted(user, )
'''























