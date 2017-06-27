DIR=/opt/ngram-data/

if [ "$(ls -A $DIR)" ]; then
     echo "ngran-data already present in $DIR"

else
    echo "$DIR is Empty, Setting up ngram-data, this might take few minutes !"
    mkdir /opt/ngram-data /opt/ngram-data/en
    chmod 777 -R /opt/ngram-data
    aws s3 cp s3://lt-ngram-data/ngrams-en-20150817.zip /opt/ngram-data/
    unzip /opt/ngram-data/ngrams-en-20150817.zip -d /opt/ngram-data/en
fi