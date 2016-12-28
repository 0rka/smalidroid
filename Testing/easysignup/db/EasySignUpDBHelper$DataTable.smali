.class public Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$DataTable;
.super Ljava/lang/Object;
.source "EasySignUpDBHelper.java"

# interfaces
.implements Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$DataColumns;
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataTable"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 88
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->BASE_CONTENT_URI:Landroid/net/Uri;

    #disallowed odex opcode
    #iput-wide-volatile v0, v1, Landroid/app/Notification;->defaults:I
    nop

    nop

    move-result-object v0

    const-string v1, "data"

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;
    nop

    return-wide v0

    move-result-object v0

    #disallowed odex opcode
    #iput-wide-volatile v0, v1, Landroid/app/Notification;->icon:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$DataTable;->CONTENT_URI:Landroid/net/Uri;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
