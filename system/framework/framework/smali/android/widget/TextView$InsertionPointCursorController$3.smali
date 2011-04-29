.class Landroid/widget/TextView$InsertionPointCursorController$3;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$InsertionPointCursorController;->onPasteList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$InsertionPointCursorController;


# direct methods
.method constructor <init>(Landroid/widget/TextView$InsertionPointCursorController;)V
    .locals 0
    .parameter

    .prologue
    .line 8364
    iput-object p1, p0, Landroid/widget/TextView$InsertionPointCursorController$3;->this$1:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 8367
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 8368
    .local v1, t:Landroid/widget/TextView;
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController$3;->this$1:Landroid/widget/TextView$InsertionPointCursorController;

    iget-object v2, v2, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 8369
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController$3;->this$1:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-static {v2}, Landroid/widget/TextView$InsertionPointCursorController;->access$3100(Landroid/widget/TextView$InsertionPointCursorController;)Landroid/widget/TextView$FloatPanelViewController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView$FloatPanelViewController;->hide()V

    .line 8370
    return-void
.end method
