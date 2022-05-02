FROM cimg/android:2022.04

RUN java -version
RUN ruby --version

# Install newer gradle
ENV GRADLE_VERSION "7.4.2"
ENV PATH $PATH:/usr/local/gradle-${GRADLE_VERSION}/bin
RUN URL=https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip && \
    curl -sSL -o /tmp/gradle.zip $URL && \
    sudo unzip -d -o /usr/local /tmp/gradle.zip && \
    rm -rf /tmp/gradle.zip
# End Install newer gradle
