FROM apache/airflow:2.9.1

COPY requirements.txt  ./

USER airflow
RUN python -m virtualenv dbt_venv && source dbt_venv/bin/activate
# Install Apache Airflow and other dependencies
RUN pip install apache-airflow==${AIRFLOW_VERSION} && \
    pip install -r requirements.txt