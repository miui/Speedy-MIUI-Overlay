.class public final enum Landroid/app/AlertDialog$Indicator;
.super Ljava/lang/Enum;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Indicator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/app/AlertDialog$Indicator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/AlertDialog$Indicator;

.field public static final enum Common:Landroid/app/AlertDialog$Indicator;

.field public static final enum Delete:Landroid/app/AlertDialog$Indicator;

.field public static final enum Info:Landroid/app/AlertDialog$Indicator;

.field public static final enum None:Landroid/app/AlertDialog$Indicator;

.field public static final enum Warning:Landroid/app/AlertDialog$Indicator;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 253
    new-instance v0, Landroid/app/AlertDialog$Indicator;

    const-string v1, "Common"

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Indicator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/AlertDialog$Indicator;->Common:Landroid/app/AlertDialog$Indicator;

    .line 254
    new-instance v0, Landroid/app/AlertDialog$Indicator;

    const-string v1, "Info"

    invoke-direct {v0, v1, v3}, Landroid/app/AlertDialog$Indicator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/AlertDialog$Indicator;->Info:Landroid/app/AlertDialog$Indicator;

    .line 255
    new-instance v0, Landroid/app/AlertDialog$Indicator;

    const-string v1, "Warning"

    invoke-direct {v0, v1, v4}, Landroid/app/AlertDialog$Indicator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/AlertDialog$Indicator;->Warning:Landroid/app/AlertDialog$Indicator;

    .line 256
    new-instance v0, Landroid/app/AlertDialog$Indicator;

    const-string v1, "Delete"

    invoke-direct {v0, v1, v5}, Landroid/app/AlertDialog$Indicator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/AlertDialog$Indicator;->Delete:Landroid/app/AlertDialog$Indicator;

    .line 257
    new-instance v0, Landroid/app/AlertDialog$Indicator;

    const-string v1, "None"

    invoke-direct {v0, v1, v6}, Landroid/app/AlertDialog$Indicator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/AlertDialog$Indicator;->None:Landroid/app/AlertDialog$Indicator;

    .line 252
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/app/AlertDialog$Indicator;

    sget-object v1, Landroid/app/AlertDialog$Indicator;->Common:Landroid/app/AlertDialog$Indicator;

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/AlertDialog$Indicator;->Info:Landroid/app/AlertDialog$Indicator;

    aput-object v1, v0, v3

    sget-object v1, Landroid/app/AlertDialog$Indicator;->Warning:Landroid/app/AlertDialog$Indicator;

    aput-object v1, v0, v4

    sget-object v1, Landroid/app/AlertDialog$Indicator;->Delete:Landroid/app/AlertDialog$Indicator;

    aput-object v1, v0, v5

    sget-object v1, Landroid/app/AlertDialog$Indicator;->None:Landroid/app/AlertDialog$Indicator;

    aput-object v1, v0, v6

    sput-object v0, Landroid/app/AlertDialog$Indicator;->$VALUES:[Landroid/app/AlertDialog$Indicator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 252
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/AlertDialog$Indicator;
    .locals 1
    .parameter "name"

    .prologue
    .line 252
    const-class v0, Landroid/app/AlertDialog$Indicator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/AlertDialog$Indicator;

    return-object p0
.end method

.method public static values()[Landroid/app/AlertDialog$Indicator;
    .locals 1

    .prologue
    .line 252
    sget-object v0, Landroid/app/AlertDialog$Indicator;->$VALUES:[Landroid/app/AlertDialog$Indicator;

    invoke-virtual {v0}, [Landroid/app/AlertDialog$Indicator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/AlertDialog$Indicator;

    return-object v0
.end method
