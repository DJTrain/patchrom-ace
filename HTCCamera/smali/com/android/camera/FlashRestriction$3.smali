.class Lcom/android/camera/FlashRestriction$3;
.super Landroid/os/FileObserver;
.source "FlashRestriction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/FlashRestriction;->startFileObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/FlashRestriction;


# direct methods
.method constructor <init>(Lcom/android/camera/FlashRestriction;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/camera/FlashRestriction$3;->this$0:Lcom/android/camera/FlashRestriction;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .parameter "event"
    .parameter "path"

    .prologue
    .line 225
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "FlashRestriction"

    const-string v1, "wimax status - MODIFY"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/camera/FlashRestriction$3;->this$0:Lcom/android/camera/FlashRestriction;

    #calls: Lcom/android/camera/FlashRestriction;->checkWimaxStatus()V
    invoke-static {v0}, Lcom/android/camera/FlashRestriction;->access$200(Lcom/android/camera/FlashRestriction;)V

    .line 229
    :cond_0
    return-void
.end method
