%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPurchasing

$header

/*
enum QInAppTransaction::TransactionStatus
*/
#define QInAppTransaction_Unknown                                    0
#define QInAppTransaction_PurchaseApproved                           1
#define QInAppTransaction_PurchaseFailed                             2
#define QInAppTransaction_PurchaseRestored                           3

/*
enum QInAppTransaction::FailureReason
*/
#define QInAppTransaction_NoFailure                                  0
#define QInAppTransaction_CanceledByUser                             1
#define QInAppTransaction_ErrorOccurred                              2
