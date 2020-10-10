docker exec -it employee-analysis_web_1 /bin/bash
python manage.py shell

from companystats.tasks import fetch_daily_csv
fetch_daily_csv()

Delete all objects
from companystats.models import Company 
Company.objects.all().delete()