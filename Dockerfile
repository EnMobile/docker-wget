FROM alpine

ENV TARGET_URL=$TARGET_URL

RUN apk update && apk add wget

CMD ["wget", "-O", "-", "--timeout=0", "$(TARGET_URL)"]

