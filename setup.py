from setuptools import setup, find_packages

setup(
    name='logica',
    version='1.3.141',
    author='Logica team',
    author_email='',
    url='',
    description='logica',
    packages=find_packages(include=['logica', 'logica.*']),
    py_modules=["logica"],
    python_requires='>=3.6',
)
