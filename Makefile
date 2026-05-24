deploy:
	cd devlonduthie-com; echo "y" | gcloud app deploy

serve:
	cd devlonduthie-com/www; python3 -m http.server 8000