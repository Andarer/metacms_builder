# MetaCMS Builder - Modules Documentation

## Overview

MetaCMS Builder includes a modular architecture with pre-built modules for common digital systems.

## Available Modules

### 1. Blog Module

Full-featured blogging system.

#### Features
- Create, edit, delete posts
- Rich text editor with markdown support
- Media management
- Categories and tags
- Search functionality
- SEO optimization
- Comment system
- Social sharing

#### Database Schema
```sql
CREATE TABLE posts (
  id STRING PRIMARY KEY,
  title STRING NOT NULL,
  content TEXT NOT NULL,
  slug STRING UNIQUE,
  author_id STRING,
  category_id STRING,
  cover_image STRING,
  published_at TIMESTAMP,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE comments (
  id STRING PRIMARY KEY,
  post_id STRING NOT NULL,
  author_id STRING,
  content TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (post_id) REFERENCES posts(id)
);
```

#### API Endpoints
```
GET    /api/v1/posts              - List posts
GET    /api/v1/posts/:id          - Get single post
POST   /api/v1/posts              - Create post
PUT    /api/v1/posts/:id          - Update post
DELETE /api/v1/posts/:id          - Delete post
GET    /api/v1/posts/:id/comments - Get comments
POST   /api/v1/posts/:id/comments - Add comment
```

### 2. Users Module

User management and authentication.

#### Features
- User registration and login
- Profile management
- Role-based access control (RBAC)
- Two-factor authentication (2FA)
- Password reset
- Social login (Google, GitHub)
- Email verification
- User preferences

#### Roles
```
- Admin: Full access
- Manager: Project management
- Editor: Content creation
- Viewer: Read-only access
- Custom: Custom permissions
```

#### API Endpoints
```
POST   /api/v1/auth/register      - Register
POST   /api/v1/auth/login         - Login
POST   /api/v1/auth/logout        - Logout
POST   /api/v1/auth/refresh       - Refresh token
GET    /api/v1/users/:id          - Get user
PUT    /api/v1/users/:id          - Update profile
POST   /api/v1/users/:id/2fa      - Enable 2FA
POST   /api/v1/auth/social        - Social login
```

### 3. Gallery Module

Media management and gallery system.

#### Features
- Image upload and management
- Album creation
- Image optimization
- Thumbnail generation
- Sharing and permissions
- Batch operations
- Image metadata
- Lightbox viewer

#### Supported Formats
```
Images: JPG, PNG, WebP, GIF, SVG
Max size: 10MB
Optimization: Automatic
```

#### API Endpoints
```
GET    /api/v1/gallery            - List albums
POST   /api/v1/gallery            - Create album
GET    /api/v1/gallery/:id        - Get album
PUT    /api/v1/gallery/:id        - Update album
DELETE /api/v1/gallery/:id        - Delete album
POST   /api/v1/gallery/:id/upload - Upload image
GET    /api/v1/gallery/:id/images - List images
```

### 4. Shop Module

E-commerce and product management.

#### Features
- Product catalog
- Shopping cart
- Order management
- Payment processing
- Inventory tracking
- Customer reviews
- Discount codes
- Multi-currency support
- Tax calculation

#### Database Schema
```sql
CREATE TABLE products (
  id STRING PRIMARY KEY,
  name STRING NOT NULL,
  description TEXT,
  price DECIMAL(10, 2),
  currency STRING DEFAULT 'USD',
  stock INT DEFAULT 0,
  sku STRING UNIQUE,
  category_id STRING,
  created_at TIMESTAMP
);

CREATE TABLE orders (
  id STRING PRIMARY KEY,
  user_id STRING,
  total DECIMAL(10, 2),
  status STRING,
  created_at TIMESTAMP
);
```

#### API Endpoints
```
GET    /api/v1/products           - List products
GET    /api/v1/products/:id       - Get product
POST   /api/v1/cart               - Add to cart
GET    /api/v1/cart               - Get cart
POST   /api/v1/orders             - Create order
GET    /api/v1/orders/:id         - Get order
POST   /api/v1/orders/:id/pay     - Process payment
```

### 5. CRM Module

Customer relationship management.

#### Features
- Contact management
- Company profiles
- Sales pipeline
- Activity tracking
- Task management
- Email integration
- Reporting and analytics
- Lead scoring

#### Database Schema
```sql
CREATE TABLE contacts (
  id STRING PRIMARY KEY,
  name STRING,
  email STRING,
  phone STRING,
  company_id STRING,
  created_at TIMESTAMP
);

CREATE TABLE deals (
  id STRING PRIMARY KEY,
  title STRING,
  value DECIMAL(10, 2),
  stage STRING,
  owner_id STRING,
  created_at TIMESTAMP
);
```

#### Stages
```
- Lead
- Qualified
- Proposal
- Negotiation
- Closed Won
- Closed Lost
```

### 6. Wiki Module

Knowledge base and documentation system.

#### Features
- Page creation with markdown
- Hierarchical page structure
- Search functionality
- Version control
- Collaboration features
- Comments on pages
- Export to PDF

#### Markdown Support
```markdown
# Heading 1
## Heading 2

**Bold** and *italic*

- List item
- Another item

1. Numbered
2. List

[Link](url)

```code```
```

#### API Endpoints
```
GET    /api/v1/wiki              - List pages
GET    /api/v1/wiki/:id          - Get page
POST   /api/v1/wiki              - Create page
PUT    /api/v1/wiki/:id          - Update page
DELETE /api/v1/wiki/:id          - Delete page
GET    /api/v1/wiki/:id/versions - Get versions
POST   /api/v1/wiki/:id/revert   - Revert version
```

### 7. AI Module

Artificial intelligence and machine learning features.

#### Features
- Chat interface
- Code generation
- Content creation
- Image generation
- Text analysis
- Recommendation engine
- Natural language processing
- Sentiment analysis

#### AI Capabilities
```
- Google Gemini integration
- Context-aware responses
- Code understanding
- Multiple language support
- Conversation history
- Fine-tuning ready
```

#### API Endpoints
```
POST   /api/v1/ai/chat           - Send message
GET    /api/v1/ai/chat/:id       - Get conversation
POST   /api/v1/ai/generate/code  - Generate code
POST   /api/v1/ai/generate/text  - Generate text
POST   /api/v1/ai/analyze        - Analyze content
```

### 8. Analytics Module

Statistics and reporting system.

#### Features
- Page view tracking
- User behavior analytics
- Conversion tracking
- Custom reports
- Data visualization
- Export capabilities
- Real-time dashboard
- Segmentation

#### Events Tracked
```
- Page views
- User actions
- Conversions
- Errors
- Performance metrics
- Custom events
```

#### Visualizations
```
- Line charts
- Bar charts
- Pie charts
- Heat maps
- Funnel analysis
```

## Module Development

### Creating a New Module

```dart
// lib/features/my_module/models/my_model.dart
class MyModel {
  final String id;
  final String name;
  
  MyModel({required this.id, required this.name});
}

// lib/features/my_module/providers/my_provider.dart
final myProvider = StateNotifierProvider<MyNotifier, List<MyModel>>((ref) {
  return MyNotifier();
});

// lib/features/my_module/screens/my_screen.dart
class MyScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(myProvider);
    return ListView(children: ...);
  }
}
```

### Module Structure

```
feature/
├── models/
│   ├── entity.dart
│   └── dto.dart
├── providers/
│   ├── notifier.dart
│   └── provider.dart
├── repositories/
│   ├── repository.dart
│   └── datasource.dart
├── screens/
│   └── screen.dart
├── widgets/
│   └── widget.dart
└── services/
    └── service.dart
```

### Publishing a Module

1. Create GitHub repository
2. Add to module marketplace
3. Document API
4. Add examples
5. Submit for review

## Module Integration

### Dependency Injection

```dart
// lib/core/providers/module_providers.dart
final moduleProvider = Provider((ref) {
  return MyModule(
    repository: ref.watch(repositoryProvider),
  );
});
```

### Configuration

```yaml
# Module configuration
modules:
  blog:
    enabled: true
    name: Blog
    version: 1.0.0
  shop:
    enabled: true
    name: Shop
    version: 1.0.0
```

## API Documentation

Each module exposes REST API endpoints:

```
Base URL: https://api.example.com/api/v1

Authentication: Bearer <token>
Content-Type: application/json

Responses:
{
  "status": "success",
  "data": { ... },
  "meta": {
    "pagination": { ... }
  }
}
```

## Best Practices

1. **Separation of Concerns** - Keep models, providers, and UI separate
2. **Error Handling** - Always handle errors gracefully
3. **Testing** - Write unit tests for business logic
4. **Documentation** - Document APIs and usage
5. **Performance** - Optimize queries and caching
6. **Security** - Validate input and authorize access
7. **Logging** - Log important events and errors

---

For more information on module development, see the [ARCHITECTURE.md](ARCHITECTURE.md) file.
