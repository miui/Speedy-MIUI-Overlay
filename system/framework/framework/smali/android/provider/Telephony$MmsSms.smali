.class public final Landroid/provider/Telephony$MmsSms;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MmsSms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$MmsSms$WordsTable;,
        Landroid/provider/Telephony$MmsSms$PendingMessages;
    }
.end annotation


# static fields
.field public static final CONTENT_ALL_LOCKED_URI:Landroid/net/Uri; = null

.field public static final CONTENT_CONVERSATIONS_URI:Landroid/net/Uri; = null

.field public static final CONTENT_CONVERSATION_THREAD_URI:Landroid/net/Uri; = null

.field public static final CONTENT_COUNT_OF_THREADS_MESSAGES:Landroid/net/Uri; = null

.field public static final CONTENT_DRAFT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_FILTER_BYPHONE_URI:Landroid/net/Uri; = null

.field public static final CONTENT_LOCKED_URI:Landroid/net/Uri; = null

.field public static final CONTENT_PREVIEW_URI:Landroid/net/Uri; = null

.field public static final CONTENT_SUM_OF_UNREAD_COUNT:Landroid/net/Uri; = null

.field public static final CONTENT_UNDELIVERED_URI:Landroid/net/Uri; = null

.field public static final CONTENT_UPDATE_BYADDRESS_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final ERR_TYPE_GENERIC:I = 0x1

.field public static final ERR_TYPE_GENERIC_PERMANENT:I = 0xa

.field public static final ERR_TYPE_MMS_PROTO_PERMANENT:I = 0xc

.field public static final ERR_TYPE_MMS_PROTO_TRANSIENT:I = 0x3

.field public static final ERR_TYPE_SMS_PROTO_PERMANENT:I = 0xb

.field public static final ERR_TYPE_SMS_PROTO_TRANSIENT:I = 0x2

.field public static final ERR_TYPE_TRANSPORT_FAILURE:I = 0x4

.field public static final MMS_PROTO:I = 0x1

.field public static final NO_ERROR:I = 0x0

.field public static final PREVIEW_ADDRESS_COLUMN_INDEX:I = 0x1

.field public static final PREVIEW_BODY_COLUMN_INDEX:I = 0x4

.field public static final PREVIEW_CHARSET_COLUMN_INDEX:I = 0x5

.field public static final PREVIEW_DATE_COLUMN_INDEX:I = 0x2

.field public static final PREVIEW_ID_COLUMN_INDEX:I = 0x0

.field public static final PREVIEW_THREAD_ID_COLUMN_INDEX:I = 0x6

.field public static final PREVIEW_TYPE_COLUMN_INDEX:I = 0x3

.field public static final SEARCH_URI:Landroid/net/Uri; = null

.field public static final SMS_PROTO:I = 0x0

.field public static final TYPE_DISCRIMINATOR_COLUMN:Ljava/lang/String; = "transport_type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1686
    const-string v0, "content://mms-sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    .line 1688
    const-string v0, "content://mms-sms/threads/#"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_CONVERSATION_THREAD_URI:Landroid/net/Uri;

    .line 1691
    const-string v0, "content://mms-sms/addresses"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_UPDATE_BYADDRESS_URI:Landroid/net/Uri;

    .line 1694
    const-string v0, "content://mms-sms/sum-unread"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_SUM_OF_UNREAD_COUNT:Landroid/net/Uri;

    .line 1700
    const-string v0, "content://mms-sms/count-threads-messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_COUNT_OF_THREADS_MESSAGES:Landroid/net/Uri;

    .line 1703
    const-string v0, "content://mms-sms/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    .line 1706
    const-string v0, "content://mms-sms/messages/byphone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_FILTER_BYPHONE_URI:Landroid/net/Uri;

    .line 1709
    const-string v0, "content://mms-sms/undelivered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_UNDELIVERED_URI:Landroid/net/Uri;

    .line 1712
    const-string v0, "content://mms-sms/draft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_DRAFT_URI:Landroid/net/Uri;

    .line 1715
    const-string v0, "content://mms-sms/locked"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_LOCKED_URI:Landroid/net/Uri;

    .line 1718
    const-string v0, "content://mms-sms/message/preview"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_PREVIEW_URI:Landroid/net/Uri;

    .line 1725
    const-string v0, "content://mms-sms/locked/all"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_ALL_LOCKED_URI:Landroid/net/Uri;

    .line 1733
    const-string v0, "content://mms-sms/search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$MmsSms;->SEARCH_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1803
    return-void
.end method
