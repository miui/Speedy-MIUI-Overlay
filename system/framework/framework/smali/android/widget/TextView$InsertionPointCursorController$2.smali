.class Landroid/widget/TextView$InsertionPointCursorController$2;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$InsertionPointCursorController;-><init>(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$InsertionPointCursorController;

.field final synthetic val$this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView$InsertionPointCursorController;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8322
    iput-object p1, p0, Landroid/widget/TextView$InsertionPointCursorController$2;->this$1:Landroid/widget/TextView$InsertionPointCursorController;

    iput-object p2, p0, Landroid/widget/TextView$InsertionPointCursorController$2;->val$this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 8325
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 8339
    :goto_0
    :pswitch_0
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController$2;->this$1:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-static {v0}, Landroid/widget/TextView$InsertionPointCursorController;->access$2800(Landroid/widget/TextView$InsertionPointCursorController;)Landroid/widget/TextView$FloatPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$FloatPanelViewController;->hide()V

    .line 8340
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController$2;->this$1:Landroid/widget/TextView$InsertionPointCursorController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/TextView$InsertionPointCursorController;->access$2902(Landroid/widget/TextView$InsertionPointCursorController;Z)Z

    .line 8341
    return-void

    .line 8327
    :pswitch_1
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController$2;->this$1:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionPointCursorController;->onSelect()V

    goto :goto_0

    .line 8330
    :pswitch_2
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController$2;->this$1:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionPointCursorController;->onSelectAll()V

    goto :goto_0

    .line 8333
    :pswitch_3
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController$2;->this$1:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionPointCursorController;->onPaste()V

    goto :goto_0

    .line 8336
    :pswitch_4
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController$2;->this$1:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionPointCursorController;->onPasteList()V

    goto :goto_0

    .line 8325
    nop

    :pswitch_data_0
    .packed-switch 0x102022c
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
