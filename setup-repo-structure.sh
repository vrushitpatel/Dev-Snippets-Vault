#!/bin/bash

# Color codes for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}========================================${NC}"
echo -e "${BLUE}  Code Snippets Library Setup Script${NC}"
echo -e "${BLUE}========================================${NC}\n"

# Create root files
echo -e "${GREEN}Creating root files...${NC}"
touch README.md LICENSE .gitignore

# Create .gitignore content
cat > .gitignore << 'EOF'
# Dependencies
node_modules/
.pnp
.pnp.js

# Testing
coverage/

# Production
build/
dist/

# Misc
.DS_Store
.env
.env.local
.env.development.local
.env.test.local
.env.production.local

# Logs
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# Editor
.vscode/
.idea/
*.swp
*.swo
*~

# OS
Thumbs.db
EOF

# Create prompts directory
echo -e "${GREEN}Creating prompts directory...${NC}"
mkdir -p prompts/nanobanana prompts/general
touch prompts/README.md \
      prompts/prd-template.md \
      prompts/mvp-template.md \
      prompts/opt-template.md \
      prompts/vibe-coding-template.md \
      prompts/claude-code-template.md \
      prompts/nanobanana/feature-development.md \
      prompts/nanobanana/bug-fix.md \
      prompts/nanobanana/code-review.md \
      prompts/general/refactoring.md \
      prompts/general/testing.md \
      prompts/general/documentation.md

# Create react directory
echo -e "${GREEN}Creating react directory...${NC}"
mkdir -p react/boilerplate react/hooks react/components react/patterns
touch react/README.md \
      react/boilerplate/vite-react-ts-setup.sh \
      react/boilerplate/next-app-router-setup.sh \
      react/boilerplate/react-router-v7-setup.sh \
      react/hooks/useDebounce.tsx \
      react/hooks/useLocalStorage.tsx \
      react/hooks/useMediaQuery.tsx \
      react/hooks/useIntersectionObserver.tsx \
      react/hooks/useAsync.tsx \
      react/components/ErrorBoundary.tsx \
      react/components/LazyImage.tsx \
      react/components/ProtectedRoute.tsx \
      react/patterns/compound-components.tsx \
      react/patterns/render-props.tsx \
      react/patterns/hoc-pattern.tsx

# Make shell scripts executable
chmod +x react/boilerplate/*.sh

# Create auth directory
echo -e "${GREEN}Creating auth directory...${NC}"
mkdir -p auth/clerk auth/supabase auth/puter auth/jwt
touch auth/README.md \
      auth/clerk/middleware.ts \
      auth/clerk/protected-api-route.ts \
      auth/clerk/user-button-setup.tsx \
      auth/supabase/auth-provider.tsx \
      auth/supabase/protected-route.tsx \
      auth/supabase/server-auth.ts \
      auth/supabase/reset-password.ts \
      auth/puter/puter-auth-setup.ts \
      auth/puter/auth-context.tsx \
      auth/jwt/generate-token.ts \
      auth/jwt/verify-token.ts \
      auth/jwt/refresh-token.ts

# Create database directory
echo -e "${GREEN}Creating database directory...${NC}"
mkdir -p database/supabase database/prisma database/mongodb
touch database/README.md \
      database/supabase/crud-operations.ts \
      database/supabase/real-time-subscription.ts \
      database/supabase/rls-policies.sql \
      database/supabase/pagination.ts \
      database/supabase/file-upload.ts \
      database/prisma/schema-template.prisma \
      database/prisma/seed-script.ts \
      database/prisma/transactions.ts \
      database/mongodb/connection.ts \
      database/mongodb/aggregation-pipeline.ts

# Create api directory
echo -e "${GREEN}Creating api directory...${NC}"
mkdir -p api/next-js api/fetch-wrappers api/integrations
touch api/README.md \
      api/next-js/api-route-template.ts \
      api/next-js/middleware.ts \
      api/next-js/error-handler.ts \
      api/next-js/rate-limiter.ts \
      api/fetch-wrappers/api-client.ts \
      api/fetch-wrappers/retry-logic.ts \
      api/fetch-wrappers/interceptors.ts \
      api/integrations/openai-completion.ts \
      api/integrations/openai-streaming.ts \
      api/integrations/vapi-call-setup.ts \
      api/integrations/stripe-webhook.ts \
      api/integrations/stripe-checkout.ts

# Create state-management directory
echo -e "${GREEN}Creating state-management directory...${NC}"
mkdir -p state-management/zustand state-management/react-query state-management/context
touch state-management/README.md \
      state-management/zustand/store-template.ts \
      state-management/zustand/persist-middleware.ts \
      state-management/zustand/immer-middleware.ts \
      state-management/react-query/query-setup.tsx \
      state-management/react-query/infinite-query.tsx \
      state-management/react-query/optimistic-updates.tsx \
      state-management/context/context-template.tsx

# Create ui directory
echo -e "${GREEN}Creating ui directory...${NC}"
mkdir -p ui/shadcn ui/tailwind ui/layouts
touch ui/README.md \
      ui/shadcn/theme-provider.tsx \
      ui/shadcn/custom-components.tsx \
      ui/shadcn/form-patterns.tsx \
      ui/tailwind/config-template.js \
      ui/tailwind/utility-classes.css \
      ui/tailwind/animation-presets.css \
      ui/layouts/dashboard-layout.tsx \
      ui/layouts/auth-layout.tsx \
      ui/layouts/responsive-sidebar.tsx

# Create payments directory
echo -e "${GREEN}Creating payments directory...${NC}"
mkdir -p payments/stripe payments/paddle
touch payments/README.md \
      payments/stripe/create-checkout-session.ts \
      payments/stripe/webhook-handler.ts \
      payments/stripe/subscription-management.ts \
      payments/stripe/usage-based-billing.ts \
      payments/paddle/integration-template.ts

# Create monitoring directory
echo -e "${GREEN}Creating monitoring directory...${NC}"
mkdir -p monitoring/sentry monitoring/analytics
touch monitoring/README.md \
      monitoring/sentry/next-config.ts \
      monitoring/sentry/error-boundary.tsx \
      monitoring/sentry/performance-monitoring.ts \
      monitoring/analytics/google-analytics.tsx \
      monitoring/analytics/custom-events.ts

# Create deployment directory
echo -e "${GREEN}Creating deployment directory...${NC}"
mkdir -p deployment/vercel deployment/docker deployment/github-actions
touch deployment/README.md \
      deployment/vercel/vercel.json \
      deployment/vercel/environment-setup.md \
      deployment/docker/Dockerfile \
      deployment/docker/docker-compose.yml \
      deployment/github-actions/ci-cd-template.yml \
      deployment/github-actions/preview-deployment.yml

# Create comfyui directory
echo -e "${GREEN}Creating comfyui directory...${NC}"
mkdir -p comfyui/workflows comfyui/custom-nodes
touch comfyui/README.md \
      comfyui/workflows/lora-comic-style.json \
      comfyui/workflows/interior-design.json \
      comfyui/workflows/comic-book-generation.json \
      comfyui/workflows/workflow-template.json \
      comfyui/custom-nodes/node-setup.md

# Create utils directory
echo -e "${GREEN}Creating utils directory...${NC}"
mkdir -p utils/validation utils/formatting utils/helpers utils/constants
touch utils/README.md \
      utils/validation/zod-schemas.ts \
      utils/validation/form-validators.ts \
      utils/formatting/date-formatters.ts \
      utils/formatting/currency.ts \
      utils/formatting/text-transforms.ts \
      utils/helpers/slugify.ts \
      utils/helpers/truncate.ts \
      utils/helpers/color-utils.ts \
      utils/constants/common-constants.ts

# Create testing directory
echo -e "${GREEN}Creating testing directory...${NC}"
mkdir -p testing/vitest testing/e2e
touch testing/README.md \
      testing/vitest/config.ts \
      testing/vitest/test-utils.tsx \
      testing/e2e/playwright-setup.ts

# Create scripts directory
echo -e "${GREEN}Creating scripts directory...${NC}"
mkdir -p scripts/setup scripts/maintenance
touch scripts/README.md \
      scripts/setup/project-init.sh \
      scripts/maintenance/cleanup-dependencies.sh

# Make scripts executable
chmod +x scripts/setup/*.sh scripts/maintenance/*.sh

# Create additional directories (bonus features)
echo -e "${YELLOW}Creating additional feature directories...${NC}"

# Email & Notifications
mkdir -p email/resend email/sendgrid
touch email/README.md \
      email/resend/send-transactional.ts \
      email/resend/email-templates.tsx \
      email/sendgrid/batch-send.ts

# File Handling
mkdir -p file-handling/upload file-handling/processing
touch file-handling/README.md \
      file-handling/upload/s3-upload.ts \
      file-handling/upload/cloudinary-upload.ts \
      file-handling/upload/file-validation.ts \
      file-handling/processing/image-compression.ts \
      file-handling/processing/pdf-generation.ts

# WebSockets & Real-time
mkdir -p realtime
touch realtime/README.md \
      realtime/websocket-client.ts \
      realtime/sse-connection.ts \
      realtime/socket-io-setup.ts

# SEO & Meta
mkdir -p seo
touch seo/README.md \
      seo/meta-tags-generator.tsx \
      seo/sitemap-generation.ts \
      seo/structured-data.tsx

# Performance
mkdir -p performance
touch performance/README.md \
      performance/lazy-loading-patterns.tsx \
      performance/code-splitting.tsx \
      performance/image-optimization.tsx \
      performance/caching-strategies.ts

# Security
mkdir -p security
touch security/README.md \
      security/csrf-protection.ts \
      security/sanitization.ts \
      security/cors-config.ts \
      security/helmet-setup.ts

# Internationalization
mkdir -p i18n
touch i18n/README.md \
      i18n/next-intl-setup.tsx \
      i18n/translation-helpers.ts

# AI/ML Integrations
mkdir -p ai-integrations/openai ai-integrations/anthropic ai-integrations/replicate ai-integrations/langchain
touch ai-integrations/README.md \
      ai-integrations/openai/chat-completion.ts \
      ai-integrations/openai/embeddings.ts \
      ai-integrations/openai/function-calling.ts \
      ai-integrations/anthropic/claude-api.ts \
      ai-integrations/replicate/image-generation.ts \
      ai-integrations/langchain/chain-template.ts

# Data Processing
mkdir -p data-processing
touch data-processing/README.md \
      data-processing/csv-parser.ts \
      data-processing/json-transformer.ts \
      data-processing/data-normalization.ts

# DevOps & Config
mkdir -p config
touch config/README.md \
      config/env-validation.ts \
      config/feature-flags.ts \
      config/ab-testing-setup.ts

echo -e "\n${BLUE}========================================${NC}"
echo -e "${GREEN}✓ Repository structure created successfully!${NC}"
echo -e "${BLUE}========================================${NC}\n"

# Display directory tree
echo -e "${YELLOW}Directory structure:${NC}"
if command -v tree &> /dev/null; then
    tree -L 2 -I 'node_modules|.git'
else
    echo -e "${YELLOW}Install 'tree' command to see visual structure${NC}"
    echo -e "Run: ${BLUE}ls -la${NC} to see created files"
fi

echo -e "\n${GREEN}Next steps:${NC}"
echo -e "1. Review the created structure"
echo -e "2. Start filling in the snippets"
echo -e "3. Initialize git: ${BLUE}git init${NC}"
echo -e "4. Add files: ${BLUE}git add .${NC}"
echo -e "5. First commit: ${BLUE}git commit -m 'Initial repository structure'${NC}"
echo -e "6. Push to GitHub\n"