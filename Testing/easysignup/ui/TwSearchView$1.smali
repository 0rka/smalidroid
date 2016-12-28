.class Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView$1;
.super Ljava/lang/Object;
.source "TwSearchView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/TwSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method
