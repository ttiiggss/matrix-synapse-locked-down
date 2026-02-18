FROM matrixdotorg/synapse:latest  
LABEL "language"="python"  
LABEL "framework"="synapse"  
WORKDIR /data  
# Copy configuration files  
COPY homeserver.yaml /data/homeserver.yaml  
COPY logging.yaml /data/logging.yaml  
# Create necessary directories  
RUN mkdir -p /data/media_store && \  
    chmod 755 /data && \  
    chmod 755 /data/media_store  
EXPOSE 8008 8448  
CMD ["python", "-m", "synapse.app.homeserver", "--config-path", "/data/homeserver.yaml"]  
