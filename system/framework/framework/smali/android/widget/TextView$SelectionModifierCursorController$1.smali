.class Landroid/widget/TextView$SelectionModifierCursorController$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$SelectionModifierCursorController;-><init>(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$SelectionModifierCursorController;

.field final synthetic val$this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView$SelectionModifierCursorController;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8551
    iput-object p1, p0, Landroid/widget/TextView$SelectionModifierCursorController$1;->this$1:Landroid/widget/TextView$SelectionModifierCursorController;

    iput-object p2, p0, Landroid/widget/TextView$SelectionModifierCursorController$1;->val$this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 8554
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 8565
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController$1;->this$1:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-static {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->access$3600(Landroid/widget/TextView$SelectionModifierCursorController;)Landroid/widget/TextView$FloatPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$FloatPanelViewController;->hide()V

    .line 8566
    return-void

    .line 8556
    :sswitch_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController$1;->this$1:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->onCopy()V

    goto :goto_0

    .line 8559
    :sswitch_1
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController$1;->this$1:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->onCut()V

    goto :goto_0

    .line 8562
    :sswitch_2
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController$1;->this$1:Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->onPaste()V

    goto :goto_0

    .line 8554
    nop

    :sswitch_data_0
    .sparse-switch
        0x1020230 -> :sswitch_2
        0x1020235 -> :sswitch_0
        0x1020236 -> :sswitch_1
    .end sparse-switch
.end method
