.class Landroid/webkit/WebView$InvokeListBox$3;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView$InvokeListBox;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebView$InvokeListBox;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/webkit/WebView$InvokeListBox;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7733
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox$3;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iput-object p2, p0, Landroid/webkit/WebView$InvokeListBox$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 7736
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$3;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->access$1400(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x7c

    long-to-int v2, p4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 7738
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 7739
    return-void
.end method
