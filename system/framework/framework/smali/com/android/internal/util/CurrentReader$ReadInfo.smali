.class Lcom/android/internal/util/CurrentReader$ReadInfo;
.super Ljava/lang/Object;
.source "CurrentReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/CurrentReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadInfo"
.end annotation


# instance fields
.field public fileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/util/CurrentReader;

.field public unitScale:I


# direct methods
.method public constructor <init>(Lcom/android/internal/util/CurrentReader;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "f"
    .parameter "s"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/internal/util/CurrentReader$ReadInfo;->this$0:Lcom/android/internal/util/CurrentReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/android/internal/util/CurrentReader$ReadInfo;->fileName:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/android/internal/util/CurrentReader$ReadInfo;->unitScale:I

    .line 32
    return-void
.end method
