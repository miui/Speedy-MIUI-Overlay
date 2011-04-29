.class public Landroid/widget/TextView$ClipboardListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClipboardListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7901
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iput-object p1, p0, Landroid/widget/TextView$ClipboardListAdapter;->this$0:Landroid/widget/TextView;

    .line 7902
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 7903
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$ClipboardListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 7904
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 7908
    const/4 v1, 0x0

    .line 7909
    .local v1, view:Landroid/view/View;
    if-eqz p2, :cond_0

    .line 7910
    move-object v1, p2

    .line 7915
    :goto_0
    const v2, 0x1020040

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7916
    .local v0, listItem:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Landroid/widget/TextView$ClipboardListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7917
    return-object v1

    .line 7912
    .end local v0           #listItem:Landroid/widget/TextView;
    .restart local p0
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView$ClipboardListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x1090075

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method
