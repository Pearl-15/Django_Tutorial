# Step 1: Use an official Python runtime as a parent image
FROM python:3.9-slim

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the requirements.txt file to the container
COPY requirements.txt /app/

# Step 4: Install the dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the Django project files into the container
COPY . /app/

# Step 6: Set the environment variable for Django settings module
ENV DJANGO_SETTINGS_MODULE=my_tennis_club.settings

# Step 7: Expose the port that Django runs on
EXPOSE 8000

# Step 8: Run Django’s development server
CMD ["python", "my_tennis_club/manage.py", "runserver", "0.0.0.0:8000"]
