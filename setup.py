import setuptools

with open("README.md", "r") as f:
    long_description = f.read()

with open("requirements.txt") as f:
    required = f.read().splitlines()

__version__ = '0.0.1'
__project_name__ = 'ddl_convertor'
__library_name = f"{__project_name__}_library"

setuptools.setup(
    name=__library_name,
    version=__version__,
    author="Databricks CoE",
    author_email="GX-PT-IDA-DatabricksCoE@shell.com",
    description="Reference pipeline implementation with EDS",
    long_description=long_description,
    long_description_content_type="text/markdown",
    packages=setuptools.find_packages(),
    package_data={"": ["*.cfg"]},
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires=">=3.7",
    install_requires=required,
)
