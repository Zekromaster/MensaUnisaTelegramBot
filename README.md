# MensaUnisa/TelegramBot
A simple python script that uses the data from my Cacher for the UniSa Refectory to
post the menu for a specific day to a telegram channel.

Run by running `execute` inside the directory, or put it in your crontab to 
post daily.

Posts are pre-written in italian for quite obvious reasons.

## Environment Variables
`DATADIR`: The directory where you're storing the csv database and the `files` subdirectory 
containing the various files downloaded by the cacher and to be posted. Default value is
`$HOME/adisurc`.

`BOT_TOKEN`: The API Token for your Telegram bot, as given by the BotFather.

`CHANNEL_ID`: The Telegram handle of the channel where the bot should post.

`UPLOAD_PNG`: Set to any value if the bot should also upload PNG images of the menu.

`DATE_OFFSET`: The bot, by default, posts the menu for the current date. If you need to
offset this date (i.e. to post tomorrow's menu every night at 8 PM) you might use 
he `DATE_OFFSET` variable, specifying the number of days to add to the current day. It
supports negative numbers.

`MEAL`: The bot, by default, sends both dinner and lunch. If you need to only
send one of these, you might use the MEAL environment variable. 0 for Lunch, 1
for Dinner.

## Dockerfile
You may run this through Docker by mounting a volume to `/adisurc` (or passing your own `DATADIR` 
environment variable and mounting the volume there). The Dockerfile is extremely simple and based
on the `python` image.
