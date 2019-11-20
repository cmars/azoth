# -*- coding: utf-8 -*-

from setuptools import setup, find_packages


with open('README.rst') as f:
    readme = f.read()

with open('LICENSE') as f:
    license = f.read()

setup(
    name='azoth',
    version='0.0.0',
    description='Self-transformation as the engine of operational state.',
    long_description=readme,
    author='Casey Marshall',
    author_email='me@cmars.tech',
    url='https://github.com/cmars/azoth',
    license=license,
    packages=find_packages(exclude=('tests', 'docs'))
)

