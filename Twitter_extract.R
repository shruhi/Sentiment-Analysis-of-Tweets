library(twitteR)

consumerkey <- "-use-your-consumer-key-"
consumersecret <- "-use-your-consumer-secret-"
accesstoken <- "-use-your-access-token-"
accesssecret <- "-use-your-access-secret-"

setup_twitter_oauth(consumer_key = consumerkey, consumer_secret = consumersecret, access_token = accesstoken, access_secret = accesssecret)

tweets <- searchTwitter("@Apple", n = 18000, lang = 'en', since = "2018-12-07", until = "2018-12-08")

tweets_df <- twListToDF(tweets)
tweets_df <- subset(rt, select = c(5,6,62,65))
write.table(tweets_df, file = "/Users/shruhi/Desktop/Project/Tweets.csv",row.names=FALSE, na="",col.names=TRUE, sep=",")
