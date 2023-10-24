.PHONY: start-supabase stop-supabase start-app

start-supabase:
		@echo "Starting supabase/docker service..."
		@cd supabase/docker && docker-compose up -d

stop-supabase:
		@echo "Stopping supabase/docker service..."
		@cd supabase/docker && docker-compose down

start-app:
		@echo "Starting app service..."
		@cd app && pnpm dev

start: start-supabase start-app
		@echo "All services started successfully."

stop: stop-crawler stop-supabase
		@echo "All services stopped successfully."
