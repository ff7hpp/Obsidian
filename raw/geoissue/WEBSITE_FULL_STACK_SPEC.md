# GeoIssue — Full-Stack Website Product Specification

> الإصدار: 1.0 | الحالة: Blueprint + current-state audit | آخر تحديث: 2026-08-21

هذه الوثيقة هي المرجع الأساسي لتطوير GeoIssue من MVP يعمل محليًا إلى منتج ويب كامل قابل للإطلاق. وهي تميّز بين ما تم التحقق منه فعليًا وما يزال مطلوبًا.

## 1. الرؤية والنطاق

GeoIssue منصة عربية/متعددة اللغات لاستقبال البلاغات الجغرافية، تحديد موقعها بدقة، إدارتها، تحليلها، وتوجيهها إلى الجهة المناسبة.

### MVP الحالي

- تسجيل دخول Firebase بالبريد وكلمة المرور.
- إنشاء/قراءة/تعديل/حذف البلاغات للمستخدم المصادق.
- خريطة Leaflet/OpenStreetMap مع بحث Nominatim وموقع الجهاز.
- تخزين Neon/PostgreSQL عند توفر `DATABASE_URL`، وذاكرة مؤقتة كـ fallback محلي.
- لوحة متابعة وتحليلات أساسية وواجهة RTL عربية ووضع داكن.
- API Express مع Helmet وCORS وقيد حجم الطلب والتحقق من المدخلات.

### خارج MVP الحالي

- أدوار Admin/User وصلاحيات RBAC مطبقة بالكامل.
- صفحة إعدادات، إدارة مستخدمين، workflow موافقات، إشعارات، مرفقات، وتدقيق audit log.
- i18n حقيقي مع تبديل العربية/الإنجليزية وحفظ اللغة.
- خرائط إنتاجية بعناوين موثوقة واتفاقية استخدام/حصص واضحة.
- نشر إنتاجي، CI/CD، مراقبة، نسخ احتياطية، واختبارات شاملة.

## 2. المستخدمون والصلاحيات

| الدور | القراءة | الإنشاء | التعديل | الحذف | الإدارة |
|---|---|---|---|---|---|
| زائر | الصفحات العامة فقط | لا | لا | لا | لا |
| User | بلاغاته والمسموح بها | نعم | بلاغه قبل الإغلاق | بلاغه وفق السياسة | لا |
| Moderator | البلاغات المسندة | نعم | الحالة/التصنيف | أرشفة لا حذف مباشر | محدود |
| Admin | الكل | نعم | نعم | حذف/استعادة وفق تدقيق | مستخدمون، إعدادات، تقارير |

كل قرار صلاحية يجب أن يفرضه الخادم وقاعدة البيانات، وليس إخفاء زر في الواجهة فقط.

## 3. المتطلبات الوظيفية

- **FR-01 Auth:** تسجيل، دخول، خروج، إعادة تعيين كلمة المرور، جلسة منتهية، ورسائل خطأ آمنة.
- **FR-02 Profile:** الاسم، الصورة، اللغة، المنطقة الزمنية، تفضيلات الإشعارات.
- **FR-03 Reports:** إنشاء بلاغ بعنوان ووصف وتصنيف وأولوية وإحداثيات ومرفقات اختيارية.
- **FR-04 Location:** اختيار الخريطة، GPS بإذن المستخدم، reverse geocoding، ورفض الإرسال دون إحداثيات صالحة.
- **FR-05 Lifecycle:** `draft -> submitted -> triaged -> in_progress -> resolved -> closed` مع تاريخ تغييرات.
- **FR-06 Search:** بحث، فلاتر، فرز، pagination، وحفظ فلاتر المستخدم.
- **FR-07 Roles:** فصل واجهات User وModerator وAdmin وحماية المسارات والـAPI.
- **FR-08 Admin:** إدارة المستخدمين، التصنيفات، الحالات، البلاغات، الحظر، وإعادة الفتح.
- **FR-09 Settings:** إعدادات الحساب، اللغة، المظهر، الخصوصية، الإشعارات، وحذف الحساب.
- **FR-10 Notifications:** داخل التطبيق، بريد/Push اختياري، وعدم اعتبار فشل الإشعار فشلًا للبلاغ.
- **FR-11 Audit:** سجل غير قابل للتلاعب للعمليات الحساسة.
- **FR-12 Export:** تصدير CSV/JSON للجهات المخولة فقط.
- **FR-13 Accessibility:** لوحة مفاتيح، focus واضح، labels، تباين، ودعم قارئات الشاشة.

## 4. المتطلبات غير الوظيفية وقبولها

- **NFR-01 Performance:** p95 لصفحات القراءة < 2.5s على اتصال 4G؛ API p95 < 500ms للقراءات المعتادة.
- **NFR-02 Availability:** هدف 99.5% للـMVP المنشور، مع health check وrollback.
- **NFR-03 Security:** OWASP ASVS baseline، منع IDOR، rate limiting، CSP تدريجي، وعدم تسجيل الأسرار.
- **NFR-04 Privacy:** تقليل بيانات الموقع، موافقة واضحة، retention configurable، وتصدير/حذف الحساب.
- **NFR-05 Reliability:** migrations قابلة لإعادة التشغيل، معاملات للعمليات المركبة، ونسخ احتياطية مختبرة.
- **NFR-06 Compatibility:** Chrome/Edge/Safari/Firefox الحديثة وresponsive من 360px إلى desktop.
- **NFR-07 Localization:** العربية RTL والإنجليزية LTR، تنسيق أرقام/تواريخ/وحدات، وترجمة رسائل الخادم.
- **NFR-08 Maintainability:** TypeScript تدريجيًا، lint/format، وحدود modules، وADRs للقرارات الكبرى.

## 5. تجربة المستخدم والتصميم

### خريطة الصفحات

- عامة: Landing، تسجيل الدخول، التسجيل، سياسة الخصوصية، الشروط.
- User: Dashboard، Reports، New Report، Report Details، Map، Notifications، Settings.
- Admin: Overview، Reports Queue، Users/Roles، Taxonomy، Audit Log، System Settings.

### Design system

- tokens للألوان والمسافات والظلال والحركة، مع light/dark.
- مكونات موحدة: Button, Input, Select, Dialog, Toast, Table, EmptyState, Skeleton, MapPanel.
- كل حالة لها تصميم: loading, empty, error, success, unauthorized, offline.
- لا تعتمد سهولة الاستخدام على اللون وحده؛ استخدم نصًا وأيقونة وحالة واضحة.

## 6. اللغات (i18n)

الوضع الحالي عربي hardcoded؛ لم تتم إضافة i18n أو language switcher بعد. التنفيذ المطلوب:

1. استخراج النصوص إلى ملفات `ar` و`en`.
2. مفتاح لغة محفوظ في الحساب و`localStorage` للزائر.
3. RTL/LTR على مستوى document، وترجمة رسائل API والتحقق.
4. اختبار طول النصوص، التواريخ، الأرقام، والخرائط بالعربية والإنجليزية.
5. إضافة لغة جديدة دون تعديل مكونات المنتج.

## 7. المعمارية والتقنيات

```text
Browser (React/Vite)
  -> Auth provider (Firebase Auth)
  -> Express API (validation, authz, rate limits)
  -> PostgreSQL/Neon (source of truth)
  -> Map provider + geocoding adapter
  -> Observability/CI/CD/hosting
```

- Frontend: React + Vite، routing، query/cache layer، form/schema validation.
- Backend: Express، versioned `/api/v1`، service/repository boundaries.
- Database: PostgreSQL/Neon، migrations، foreign keys، indexes، soft delete.
- Auth: Firebase ID token verification على الخادم؛ claims/roles في مصدر موثوق.
- Maps: adapter يعزل Leaflet عن مزود الخرائط والجيوكودينغ لتسهيل التبديل.

## 8. API contract

الاتفاق الموحد: JSON، `Authorization: Bearer <token>`، request id، pagination cursor، وأخطاء بالشكل `{ code, message, details, requestId }`.

الواجهات المستهدفة:

- `GET /api/v1/health`
- `GET/POST /api/v1/reports`
- `GET/PATCH/DELETE /api/v1/reports/:id`
- `POST /api/v1/reports/:id/status`
- `GET /api/v1/me` و`PATCH /api/v1/me`
- `GET/PATCH /api/v1/admin/users`
- `GET /api/v1/admin/audit-log`
- `GET /api/v1/taxonomy`

يجب توثيق OpenAPI، واختبار 401/403/404/409/422/429، وعدم كشف stack traces أو أسرار.

## 9. البيانات وقاعدة البيانات

الجداول المقترحة: `users`, `roles`, `reports`, `report_status_history`, `report_attachments`, `categories`, `notifications`, `audit_logs`.

- مفاتيح UUID، timestamps UTC، وقيود foreign key.
- فهارس على `(status, created_at)`, `(owner_id, created_at)`, وPostGIS لاحقًا عند الحاجة.
- لا تحذف البلاغات الحساسة نهائيًا افتراضيًا؛ استخدم `deleted_at` وسياسة retention.
- migrations في Git، seed منفصل، backup/restore drill قبل الإنتاج.

## 10. الخرائط والموقع

- لا يوجد مركز Ankara افتراضي للبلاغ؛ المركز الافتراضي للعرض فقط، والبلاغ بلا marker حتى يختار المستخدم موقعًا.
- GPS المتصفح هو المصدر الأدق المتاح للمستخدم، مع عرض accuracy وطلب الإذن بوضوح.
- reverse geocoding عبر adapter مع caching واحترام شروط المزود وrate limits.
- للإنتاج: قيّم Google Maps Platform أو Mapbox من حيث دقة العناوين، التغطية، السعر، والخصوصية؛ لا تستخدم Nominatim العام بكثافة دون سياسة استخدام مناسبة.
- خزّن `latitude`, `longitude`, `accuracy_m`, `address_snapshot`, و`provider` مع وقت الالتقاط.

## 11. الأمن والخصوصية

- تحقق من token على كل endpoint محمي، ثم authorize على ownership/role.
- validation schema مشتركة، body limits، CORS allowlist، Helmet، rate limits لكل IP/user.
- حماية IDOR، XSS، CSRF حسب نمط الجلسة، SSRF في أي URL خارجي، ورفع ملفات محدود النوع/الحجم.
- الأسرار في secret manager/env فقط؛ لا commit لملفات Firebase service account.
- threat model للهوية، الموقع، المرفقات، إساءة البلاغات، والجيوكودينغ.

## 12. الجودة والاختبارات

- Unit: validators, permissions, map adapter, state transitions.
- Integration: API + Neon test database + Firebase emulator أو mocks موثوقة.
- E2E: register/login، create report with location، edit/delete policy، admin moderation، language switch.
- Browser QA: console/network، screenshots، responsive، keyboard، accessibility.
- Security: dependency audit، secret scan، negative authorization tests، rate-limit tests.
- Release gates: build، lint، tests، migration dry-run، health check، smoke E2E، rollback plan.

## 13. التشغيل والنشر

- بيئات `local`, `test`, `staging`, `production` مع مشاريع/قواعد بيانات منفصلة.
- CI على كل PR: install lockfile، lint، typecheck، unit/integration، build، security scan.
- deploy immutable، migrations قبل traffic، health/readiness endpoints، rollback موثق.
- مراقبة logs structured، error tracking، API latency، DB errors، auth failures، geocoding quota.
- runbooks للحوادث: outage، token failure، DB migration، quota exhaustion، leaked secret.

## 14. الأدوات المقترحة

GitHub، npm، ESLint/Prettier، Vitest، Playwright، OpenAPI، Firebase Console، Neon Console، Sentry أو بديل، GitHub Actions، وprovider خرائط بعقد واضح.

## 15. خارطة التنفيذ

### P0 — أساس الإنتاج

RBAC حقيقي، i18n عربي/إنجليزي، Settings، API v1/OpenAPI، migrations/constraints، authorization tests، وCI.

### P1 — منتج قابل للاستخدام

Admin view، moderation workflow، notifications، audit log، attachments، pagination، accessibility pass، وstaging deployment.

### P2 — توسع وتشغيل

PostGIS، تحسين البحث المكاني، caching، observability كاملة، load test، data retention automation، وتقارير متقدمة.

## 16. مصفوفة الحالة الحالية

| المجال | الحالة الحالية | الدليل/الخطوة التالية |
|---|---|---|
| Frontend/API/Neon/Firebase | موجود ومتحقق محليًا | `FULL_STACK_READINESS.md` |
| Maps/location | MVP موجود، مع منع الإرسال دون إحداثيات | إضافة provider adapter وaccuracy UX |
| i18n | غير منفذ | P0 |
| Settings | غير مكتملة | P0 |
| User/Admin views | فصل كامل غير منفذ | RBAC + P0/P1 |
| Authorization | يحتاج توسيعًا على مستوى الأدوار | اختبارات 401/403/IDOR |
| Database durability | Neon عند توفر البيئة، fallback محلي | منع fallback في production + backups |
| QA/CI/CD/observability | جزئي/محلي | P0 ثم P1 |

## 17. تعريف “جاهز للإنتاج”

لا يعتبر GeoIssue جاهزًا إلا بعد نجاح كل بوابات الإصدار، وإثبات كل claim باختبار أو browser/runtime evidence، ووجود rollback وbackup وmonitoring، ومراجعة مستقلة للصلاحيات والخصوصية. هذا الملف blueprint؛ لا يعني أن العناصر غير المعلمة كمتحققة قد نُفذت.

## مراجع AI Mind

- `ai_mind/wiki/concepts/product-engineering-lifecycle.md`
- `ai_mind/wiki/concepts/agent-verification.md`
- `ai_mind/wiki/projects/assistive-communication-product.md`
- `ai_mind/wiki/projects/assistive-communication-architecture.md`
- `ai_mind/wiki/projects/assistive-communication-data-model.md`
