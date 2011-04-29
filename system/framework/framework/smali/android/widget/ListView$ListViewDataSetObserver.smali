.class Landroid/widget/ListView$ListViewDataSetObserver;
.super Landroid/widget/AdapterView$AdapterDataSetObserver;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListViewDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method private constructor <init>(Landroid/widget/ListView;)V
    .locals 0
    .parameter

    .prologue
    .line 4019
    iput-object p1, p0, Landroid/widget/ListView$ListViewDataSetObserver;->this$0:Landroid/widget/ListView;

    invoke-direct {p0, p1}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 4022
    iget-object v0, p0, Landroid/widget/ListView$ListViewDataSetObserver;->this$0:Landroid/widget/ListView;

    invoke-static {v0}, Landroid/widget/ListView;->access$500(Landroid/widget/ListView;)V

    .line 4023
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 4024
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 4028
    iget-object v0, p0, Landroid/widget/ListView$ListViewDataSetObserver;->this$0:Landroid/widget/ListView;

    invoke-static {v0}, Landroid/widget/ListView;->access$500(Landroid/widget/ListView;)V

    .line 4029
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onInvalidated()V

    .line 4030
    return-void
.end method
