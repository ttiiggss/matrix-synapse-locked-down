# Matrix Synapse - Locked Down Configuration  
A production-ready, security-hardened Matrix Synapse homeserver configuration.  
## Features
- E2EE (End-to-End Encryption) enabled by default
- Locked-down registration (invite-only)
- TURN servers configured for voice/video calls
- Strict rate limiting
- Privacy-focused (presence disabled)
- PostgreSQL database support
- Retention policies enabled  
## Deployment  
Deploy to Zeabur with your custom domain and PostgreSQL database.  
## Configuration  
Update the following in `homeserver.yaml`:
- `server_name`: Your Matrix server domain
- `turn_shared_secret`: A secure random string for TURN authentication
- `federation_domain_whitelist`: Servers you want to federate with
- Database credentials (if not using environment variables)  
## Admin User  
Create admin users with:  
```bash  
docker exec <container> python -m synapse._scripts.register_new_matrix_user -c /data/homeserver.yaml -u <username> -p <password> -a http://localhost:8008  
