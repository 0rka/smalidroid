.class Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$2;
.super Ljava/lang/Object;
.source "CountryActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)V
    .registers 2

    .prologue
    .line 291
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 294
    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_19

    .line 295
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryAdapter:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->access$000(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->AlphabetIndex:Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->countryAdapter:Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;->access$000(Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;)Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity$CountryAdapter;->notifyDataSetChanged()V

    .line 298
    :cond_19
    const/4 v0, 0x0

    return v0
.end method
