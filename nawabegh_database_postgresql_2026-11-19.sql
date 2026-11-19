-- ========================================================
-- NAWABEGH EDU PLATFORM - DATABASE SQL BACKUP DUMP
-- Generated on: 2026-11-19T08:41:12.167Z
-- Target Dialect: PostgreSQL / Cloud SQL Standard
-- ========================================================

BEGIN;

-- Table: users (2 records)
INSERT INTO users (uid, email, display_name, display_name_en, role, role_title, phone, permissions, is_active, notes) VALUES ('usr-1794484082874', 'm@m.com', 'محمد شريف', 'mohammed shreef', 'admin', 'الادمن العام', '01287703515', '["manage_students","manage_teachers","manage_lessons","manage_quizzes","manage_certificates","manage_finances","manage_whiteboard","manage_members","manage_backups","manage_settings"]', TRUE, '') ON CONFLICT (uid) DO NOTHING;
INSERT INTO users (uid, email, display_name, display_name_en, role, role_title, phone, permissions, is_active, notes) VALUES ('usr-super-admin', 'Mo-NewFolder@nawabegh.edu', 'Mo-NewFolder (الأدمن العام)', 'Mo-NewFolder (Super Admin)', 'admin', 'المدير العام للمنصة', '+966500000000', '["manage_students","manage_teachers","manage_lessons","manage_quizzes","manage_certificates","manage_finances","manage_whiteboard","manage_members","manage_backups","manage_settings"]', TRUE, 'الحساب الرئيسي للأدمن العام') ON CONFLICT (uid) DO NOTHING;

-- Table: students (2 records)
INSERT INTO students (id, code, name, name_en, grade, type, parent_name, parent_phone, parent_email, overall_score, attendance_rate, status, notes, registered_date, city) VALUES ('stu-1794919579578', 'A1', 'امانى جميل', 'امانى جميل', 'الصف الأول الثانوي', 'offline', 'جميل', '01285416844', '', 88, 95, 'regular', '', '2026-11-17', '') ON CONFLICT (id) DO NOTHING;
INSERT INTO students (id, code, name, name_en, grade, type, parent_name, parent_phone, parent_email, overall_score, attendance_rate, status, notes, registered_date, city) VALUES ('stu-1794919324292', '1N', 'نور اسامه', 'نور اسامه', 'الصف الأول الثانوي', 'offline', 'اسامه', '01282594465', '', 88, 95, 'regular', '', '2026-11-17', '') ON CONFLICT (id) DO NOTHING;

-- Table: teachers (0 records)

-- Table: lessons (0 records)

-- Table: quizzes (0 records)

-- Table: quiz_attempts (0 records)

-- Table: certificates (0 records)

-- Table: timetable (0 records)

-- Table: invoices (0 records)

-- Table: parent_conversations (0 records)

-- Table: parent_messages (0 records)

-- Table: assignments (0 records)

-- Table: assignment_submissions (0 records)

-- Table: notifications (0 records)

-- Table: faqs (0 records)

-- Table: inquiries (0 records)

-- Table: audit_logs (7 records)
INSERT INTO audit_logs (id, action, action_ar, entity_type, entity_name, performed_by, timestamp, details, severity) VALUES ('log-1794919324763-tqm', 'student', 'تسجيل طالب جديد', 'student', 'نور اسامه', 'Mo-NewFolder (Mo-NewFolder (الأدمن العام))', '١٧ نوفمبر ٢٠٢٦، ٠٢:٤٢ م', 'تم قيد الطالب بنظام (سنتر حضوري)', 'info') ON CONFLICT (id) DO NOTHING;
INSERT INTO audit_logs (id, action, action_ar, entity_type, entity_name, performed_by, timestamp, details, severity) VALUES ('log-1794919580043-d5i', 'student', 'تسجيل طالب جديد', 'student', 'امانى جميل', 'Mo-NewFolder (Mo-NewFolder (الأدمن العام))', '١٧ نوفمبر ٢٠٢٦، ٠٢:٤٦ م', 'تم قيد الطالب بنظام (سنتر حضوري)', 'info') ON CONFLICT (id) DO NOTHING;
INSERT INTO audit_logs (id, action, action_ar, entity_type, entity_name, performed_by, timestamp, details, severity) VALUES ('log-1794919599349-l3x', 'student', 'تحديث بيانات طالب', 'student', 'نور اسامه', 'Mo-NewFolder (Mo-NewFolder (الأدمن العام))', '١٧ نوفمبر ٢٠٢٦، ٠٢:٤٦ م', 'تم رصد وتحديث درجات وحضور الطالب', 'info') ON CONFLICT (id) DO NOTHING;
INSERT INTO audit_logs (id, action, action_ar, entity_type, entity_name, performed_by, timestamp, details, severity) VALUES ('log-1794994604294-utx', 'backup', 'إنشاء نسخة احتياطية للتطبيق البرمجي', 'backup', 'nawabegh_app_archive_2026-11-18T09-36-43.zip', 'Mo-NewFolder (Mo-NewFolder (الأدمن العام))', '١٨ نوفمبر ٢٠٢٦، ١١:٣٦ ص', 'تم ضغط وحفظ مصادر التطبيق وقواعد البيانات كملف ZIP متكامل', 'info') ON CONFLICT (id) DO NOTHING;
INSERT INTO audit_logs (id, action, action_ar, entity_type, entity_name, performed_by, timestamp, details, severity) VALUES ('log-1794994635837-p4m', 'backup', 'إنشاء نسخة احتياطية لقاعدة البيانات', 'backup', 'nawabegh_database_dump_2026-11-18T09-37-14.sql', 'Mo-NewFolder (Mo-NewFolder (الأدمن العام))', '١٨ نوفمبر ٢٠٢٦، ١١:٣٧ ص', 'تم تصدير وحفظ سجلات قاعدة بيانات Cloud SQL بنجاح بحجم 4.5 KB', 'info') ON CONFLICT (id) DO NOTHING;
INSERT INTO audit_logs (id, action, action_ar, entity_type, entity_name, performed_by, timestamp, details, severity) VALUES ('log-1795077655375-yym', 'backup', 'إنشاء نسخة احتياطية للتطبيق البرمجي', 'backup', 'nawabegh_app_archive_2026-11-19T08-40-54.zip', 'Mo-NewFolder (Mo-NewFolder (الأدمن العام))', '١٩ نوفمبر ٢٠٢٦، ١٠:٤٠ ص', 'تم ضغط وحفظ مصادر التطبيق وقواعد البيانات كملف ZIP متكامل', 'info') ON CONFLICT (id) DO NOTHING;
INSERT INTO audit_logs (id, action, action_ar, entity_type, entity_name, performed_by, timestamp, details, severity) VALUES ('log-1795077669339-w7l', 'backup', 'إنشاء نسخة احتياطية لقاعدة البيانات', 'backup', 'nawabegh_database_dump_2026-11-19T08-41-07.sql', 'Mo-NewFolder (Mo-NewFolder (الأدمن العام))', '١٩ نوفمبر ٢٠٢٦، ١٠:٤١ ص', 'تم تصدير وحفظ سجلات قاعدة بيانات Cloud SQL بنجاح بحجم 5.6 KB', 'info') ON CONFLICT (id) DO NOTHING;

-- Table: lesson_ratings (0 records)

COMMIT;
-- Dump completed at 2026-11-19T08:41:12.854Z
