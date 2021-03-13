FLASK_ENV=development
FLASK_APP={{cookiecutter.app_name}}.app:create_app
SECRET_KEY=changeme
{% if cookiecutter.use_postgres == "yes" %}
DATABASE_URI=postgresql://{{cookiecutter.app_name}}_user:{{cookiecutter.app_name}}_db_pw@db/{{cookiecutter.app_name}}_db
{% else %}
DATABASE_URI=sqlite:////tmp/{{cookiecutter.app_name}}.db
{% endif %}
{%- if cookiecutter.use_celery == "yes" %}
CELERY_BROKER_URL=amqp://guest:guest@localhost/
CELERY_RESULT_BACKEND_URL=rpc://
{%- endif %}
