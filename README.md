# MensaUnisa/TelegramBot

> ⚠️ **This bot was made redundant since the UniSa refectory now publishes menus through their social media.**
>
> Additionally, the perser it relies on to get its data has stopped working
> when the webpage used to gather the official menus was overhauled. 

A simple python script that uses the data from my Cacher for the UniSa Refectory to
post the menu for a specific day to a telegram channel. It won't post the same day
two times in a row, but it will reattempt if last attempt failed.

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
offset this date (i.e. to post tomorrow's menu) you might use the `DATE_OFFSET` variable,
specifying the number of days to add to the current day. It supports negative numbers.

`TIME_OFFSET`: If you need to offset the date by some hours (i.e. to post the menu 8 hours 
early), you might use the `TIME_OFFSET` variable, specifying the number of hours to add to
the current time. It supports negative numbers.

`MEAL`: The bot, by default, sends the lunch menu. If you want to explicitly mark what menu to send,
you might use the `MEAL` environment variable, setting it to 0 for Lunch, 1 for Dinner. (Setting it
to 0 or any value other than 1 currently matches default behaviour, but default behaviour will not
be guaranteed forever and it's highly suggested you explicitly mark the meal you intend to send). 

## Dockerfile
You may run this through Docker by mounting a volume to `/adisurc` (or passing your own `DATADIR` 
environment variable and mounting the volume there). The Dockerfile is extremely simple and based
on the `python` image.
