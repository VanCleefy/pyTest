FROM python:3.8-slim

# Create a virtualenv for dependencies. This isolates these packages from
# system-level packages.
# Use -p python3 or -p python3.7 to select python version. Default is version 2.
# RUN apt install python3-virtualenv
# RUN virtualenv /pyTestEnv
RUN python -m venv /pyTestEnv
# Enable venv
ENV PATH="/pyTestEnv/bin:$PATH"
RUN . /pyTestEnv/bin/activate
# Setting these environment variables are the same as running
# source /env/bin/activate.
# ENV VIRTUAL_ENV /pyTestEnv
# ENV PATH /pyTestEnv/bin:$PATH

# Run the application:
ADD . .
RUN pip install Django
CMD ["python3", "./pyTest/manage.py", "runserver"]