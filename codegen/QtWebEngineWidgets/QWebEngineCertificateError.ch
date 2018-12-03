%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngineWidgets

$header

/*
enum QWebEngineCertificateError::Error
*/
#define QWebEngineCertificateError_SslPinnedKeyNotInCertificateChain  -150
#define QWebEngineCertificateError_CertificateCommonNameInvalid       -200
#define QWebEngineCertificateError_CertificateDateInvalid             -201
#define QWebEngineCertificateError_CertificateAuthorityInvalid        -202
#define QWebEngineCertificateError_CertificateContainsErrors          -203
#define QWebEngineCertificateError_CertificateNoRevocationMechanism   -204
#define QWebEngineCertificateError_CertificateUnableToCheckRevocation -205
#define QWebEngineCertificateError_CertificateRevoked                 -206
#define QWebEngineCertificateError_CertificateInvalid                 -207
#define QWebEngineCertificateError_CertificateWeakSignatureAlgorithm  -208
#define QWebEngineCertificateError_CertificateNonUniqueName           -210
#define QWebEngineCertificateError_CertificateWeakKey                 -211
#define QWebEngineCertificateError_CertificateNameConstraintViolation -212
