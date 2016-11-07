FROM ruby:2.3.1

# Install system dependencies
RUN apt-get update -qq --fix-missing
RUN apt-get install -y build-essential libmysqlclient-dev mysql-client nodejs

# Set environment variables
ENV APPNAME railsboiler
ENV INSTALL_PATH /$APPNAME
ENV BUNDLE_PATH /bundle_box

RUN mkdir $INSTALL_PATH
WORKDIR $INSTALL_PATH


ADD . $INSTALL_PATH
