.class public final Landroid/provider/Notes$CallNote;
.super Ljava/lang/Object;
.source "Notes.java"

# interfaces
.implements Landroid/provider/Notes$DataColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Notes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallNote"
.end annotation


# static fields
.field public static final CALL_DATE:Ljava/lang/String; = "data1"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/call_note"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/call_note"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final PHONE_NUMBER:Ljava/lang/String; = "data3"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 259
    const-string v0, "content://notes/call_note"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Notes$CallNote;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
