%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

%% TODO: revisar #ifndef ...

/*
enum QCryptographicHash::Algorithm
*/
#ifndef QT_CRYPTOGRAPHICHASH_ONLY_SHA1
#define QCryptographicHash_Md4                                       0
#define QCryptographicHash_Md5                                       1
#endif
#define QCryptographicHash_Sha1                                      2
#ifndef QT_CRYPTOGRAPHICHASH_ONLY_SHA1
#define QCryptographicHash_Sha224                                    3
#define QCryptographicHash_Sha256                                    4
#define QCryptographicHash_Sha384                                    5
#define QCryptographicHash_Sha512                                    6
#define QCryptographicHash_Keccak_224                                7
#define QCryptographicHash_Keccak_256                                8
#define QCryptographicHash_Keccak_384                                9
#define QCryptographicHash_Keccak_512                                10
#define QCryptographicHash_RealSha3_224                              11
#define QCryptographicHash_RealSha3_256                              12
#define QCryptographicHash_RealSha3_384                              13
#define QCryptographicHash_RealSha3_512                              14
#ifndef QT_SHA3_KECCAK_COMPAT
#define QCryptographicHash_Sha3_224                                  QCryptographicHash_RealSha3_224
#define QCryptographicHash_Sha3_256                                  QCryptographicHash_RealSha3_256
#define QCryptographicHash_Sha3_384                                  QCryptographicHash_RealSha3_384
#define QCryptographicHash_Sha3_512                                  QCryptographicHash_RealSha3_512
#else
#define QCryptographicHash_Sha3_224                                  QCryptographicHash_Keccak_224
#define QCryptographicHash_Sha3_256                                  QCryptographicHash_Keccak_256
#define QCryptographicHash_Sha3_384                                  QCryptographicHash_Keccak_384
#define QCryptographicHash_Sha3_512                                  QCryptographicHash_Keccak_512
#endif
#endif
