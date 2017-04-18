/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSSLCERTIFICATE
REQUEST QSSLCIPHER
REQUEST QSSLKEY
REQUEST QVARIANT
REQUEST QSSLCONFIGURATION
REQUEST QSSLERROR
#endif

CLASS QSslSocket INHERIT QTcpSocket

   DATA class_id INIT Class_Id_QSslSocket
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD abort
   METHOD addCaCertificate
   METHOD addCaCertificates1
   METHOD addCaCertificates2
   METHOD addCaCertificates
   METHOD caCertificates
   METHOD ciphers
   METHOD connectToHostEncrypted1
   METHOD connectToHostEncrypted2
   METHOD connectToHostEncrypted
   METHOD encryptedBytesAvailable
   METHOD encryptedBytesToWrite
   METHOD flush
   METHOD ignoreSslErrors1
   METHOD ignoreSslErrors2
   METHOD ignoreSslErrors
   METHOD isEncrypted
   METHOD localCertificate
   METHOD mode
   METHOD peerCertificate
   METHOD peerCertificateChain
   METHOD peerVerifyDepth
   METHOD peerVerifyMode
   METHOD privateKey
   METHOD protocol
   METHOD sessionCipher
   METHOD setCaCertificates
   METHOD setCiphers1
   METHOD setCiphers2
   METHOD setCiphers
   METHOD setLocalCertificate1
   METHOD setLocalCertificate2
   METHOD setLocalCertificate
   METHOD setPeerVerifyDepth
   METHOD setPeerVerifyMode
   METHOD setPrivateKey1
   METHOD setPrivateKey2
   METHOD setPrivateKey
   METHOD setProtocol
   METHOD setReadBufferSize
   METHOD setSocketDescriptor
   METHOD setSocketOption
   METHOD setSslConfiguration
   METHOD socketOption
   METHOD sslConfiguration
   METHOD sslErrors
   METHOD waitForConnected
   METHOD waitForDisconnected
   METHOD waitForEncrypted
   METHOD atEnd
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD waitForBytesWritten
   METHOD waitForReadyRead
   METHOD startClientEncryption
   METHOD startServerEncryption
   METHOD addDefaultCaCertificate
   METHOD addDefaultCaCertificates1
   METHOD addDefaultCaCertificates2
   METHOD addDefaultCaCertificates
   METHOD defaultCaCertificates
   METHOD defaultCiphers
   METHOD setDefaultCaCertificates
   METHOD setDefaultCiphers
   METHOD supportedCiphers
   METHOD supportsSsl
   METHOD systemCaCertificates
   METHOD onEncrypted
   METHOD onEncryptedBytesWritten
   METHOD onModeChanged
   METHOD onPeerVerifyError
   METHOD onSslErrors
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSslSocket
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSslSocket>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSslSocket>
#endif

#include <QSslKey>
#include <QSslCipher>
#include <QSslConfiguration>

/*
QSslSocket ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSSLSOCKET_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QSslSocket * o = new QSslSocket ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QSSLSOCKET_DELETE )
{
  QSslSocket * obj = (QSslSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void abort ()
*/
HB_FUNC_STATIC( QSSLSOCKET_ABORT )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->abort (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addCaCertificate ( const QSslCertificate & certificate )
*/
HB_FUNC_STATIC( QSSLSOCKET_ADDCACERTIFICATE )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslCertificate * par1 = (QSslCertificate *) _qt5xhb_itemGetPtr(1);
    obj->addCaCertificate ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool addCaCertificates ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
*/
HB_FUNC_STATIC( QSSLSOCKET_ADDCACERTIFICATES1 )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = ISNIL(2)? (int) QSsl::Pem : hb_parni(2);
    int par3 = ISNIL(3)? (int) QRegExp::FixedString : hb_parni(3);
    hb_retl( obj->addCaCertificates ( par1,  (QSsl::EncodingFormat) par2,  (QRegExp::PatternSyntax) par3 ) );
  }
}

/*
void addCaCertificates ( const QList<QSslCertificate> & certificates )
*/
HB_FUNC_STATIC( QSSLSOCKET_ADDCACERTIFICATES2 )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QSslCertificate> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QSslCertificate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->addCaCertificates ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]bool addCaCertificates ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
//[2]void addCaCertificates ( const QList<QSslCertificate> & certificates )

HB_FUNC_STATIC( QSSLSOCKET_ADDCACERTIFICATES )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_ADDCACERTIFICATES1 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_ADDCACERTIFICATES2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QList<QSslCertificate> caCertificates () const
*/
HB_FUNC_STATIC( QSSLSOCKET_CACERTIFICATES )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QSslCertificate> list = obj->caCertificates (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSSLCERTIFICATE" );
    #else
    pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QSslCertificate *) new QSslCertificate ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QList<QSslCipher> ciphers () const
*/
HB_FUNC_STATIC( QSSLSOCKET_CIPHERS )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QSslCipher> list = obj->ciphers (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSSLCIPHER" );
    #else
    pDynSym = hb_dynsymFindName( "QSSLCIPHER" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QSslCipher *) new QSslCipher ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
void connectToHostEncrypted ( const QString & hostName, quint16 port, OpenMode mode = ReadWrite )
*/
HB_FUNC_STATIC( QSSLSOCKET_CONNECTTOHOSTENCRYPTED1 )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par3 = ISNIL(3)? (int) QIODevice::ReadWrite : hb_parni(3);
    obj->connectToHostEncrypted ( par1, (quint16) hb_parni(2),  (QIODevice::OpenMode) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void connectToHostEncrypted ( const QString & hostName, quint16 port, const QString & sslPeerName, OpenMode mode = ReadWrite )
*/
HB_FUNC_STATIC( QSSLSOCKET_CONNECTTOHOSTENCRYPTED2 )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par3 = QLatin1String( hb_parc(3) );
    int par4 = ISNIL(4)? (int) QIODevice::ReadWrite : hb_parni(4);
    obj->connectToHostEncrypted ( par1, (quint16) hb_parni(2), par3,  (QIODevice::OpenMode) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void connectToHostEncrypted ( const QString & hostName, quint16 port, OpenMode mode = ReadWrite )
//[2]void connectToHostEncrypted ( const QString & hostName, quint16 port, const QString & sslPeerName, OpenMode mode = ReadWrite )

HB_FUNC_STATIC( QSSLSOCKET_CONNECTTOHOSTENCRYPTED )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_CONNECTTOHOSTENCRYPTED1 );
  }
  else if( ISBETWEEN(3,4) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_CONNECTTOHOSTENCRYPTED2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
qint64 encryptedBytesAvailable () const
*/
HB_FUNC_STATIC( QSSLSOCKET_ENCRYPTEDBYTESAVAILABLE )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->encryptedBytesAvailable (  ) );
  }
}


/*
qint64 encryptedBytesToWrite () const
*/
HB_FUNC_STATIC( QSSLSOCKET_ENCRYPTEDBYTESTOWRITE )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->encryptedBytesToWrite (  ) );
  }
}


/*
bool flush ()
*/
HB_FUNC_STATIC( QSSLSOCKET_FLUSH )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->flush (  ) );
  }
}


/*
void ignoreSslErrors ( const QList<QSslError> & errors )
*/
HB_FUNC_STATIC( QSSLSOCKET_IGNORESSLERRORS1 )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QSslError> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QSslError *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->ignoreSslErrors ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ignoreSslErrors ()
*/
HB_FUNC_STATIC( QSSLSOCKET_IGNORESSLERRORS2 )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->ignoreSslErrors (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void ignoreSslErrors ( const QList<QSslError> & errors )
//[2]void ignoreSslErrors ()

HB_FUNC_STATIC( QSSLSOCKET_IGNORESSLERRORS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_IGNORESSLERRORS1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_IGNORESSLERRORS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isEncrypted () const
*/
HB_FUNC_STATIC( QSSLSOCKET_ISENCRYPTED )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEncrypted (  ) );
  }
}


/*
QSslCertificate localCertificate () const
*/
HB_FUNC_STATIC( QSSLSOCKET_LOCALCERTIFICATE )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslCertificate * ptr = new QSslCertificate( obj->localCertificate (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSSLCERTIFICATE", true );
  }
}


/*
SslMode mode () const
*/
HB_FUNC_STATIC( QSSLSOCKET_MODE )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->mode (  ) );
  }
}


/*
QSslCertificate peerCertificate () const
*/
HB_FUNC_STATIC( QSSLSOCKET_PEERCERTIFICATE )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslCertificate * ptr = new QSslCertificate( obj->peerCertificate (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSSLCERTIFICATE", true );
  }
}


/*
QList<QSslCertificate> peerCertificateChain () const
*/
HB_FUNC_STATIC( QSSLSOCKET_PEERCERTIFICATECHAIN )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QSslCertificate> list = obj->peerCertificateChain (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSSLCERTIFICATE" );
    #else
    pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QSslCertificate *) new QSslCertificate ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
int peerVerifyDepth () const
*/
HB_FUNC_STATIC( QSSLSOCKET_PEERVERIFYDEPTH )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->peerVerifyDepth (  ) );
  }
}


/*
QSslSocket::PeerVerifyMode peerVerifyMode () const
*/
HB_FUNC_STATIC( QSSLSOCKET_PEERVERIFYMODE )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->peerVerifyMode (  ) );
  }
}


/*
QSslKey privateKey () const
*/
HB_FUNC_STATIC( QSSLSOCKET_PRIVATEKEY )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslKey * ptr = new QSslKey( obj->privateKey (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSSLKEY", true );
  }
}


/*
QSsl::SslProtocol protocol () const
*/
HB_FUNC_STATIC( QSSLSOCKET_PROTOCOL )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->protocol (  ) );
  }
}


/*
QSslCipher sessionCipher () const
*/
HB_FUNC_STATIC( QSSLSOCKET_SESSIONCIPHER )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslCipher * ptr = new QSslCipher( obj->sessionCipher (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSSLCIPHER", true );
  }
}


/*
void setCaCertificates ( const QList<QSslCertificate> & certificates )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETCACERTIFICATES )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QSslCertificate> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QSslCertificate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setCaCertificates ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCiphers ( const QList<QSslCipher> & ciphers )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETCIPHERS1 )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QSslCipher> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QSslCipher *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setCiphers ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCiphers ( const QString & ciphers )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETCIPHERS2 )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setCiphers ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setCiphers ( const QList<QSslCipher> & ciphers )
//[2]void setCiphers ( const QString & ciphers )

HB_FUNC_STATIC( QSSLSOCKET_SETCIPHERS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_SETCIPHERS1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_SETCIPHERS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setLocalCertificate ( const QSslCertificate & certificate )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETLOCALCERTIFICATE1 )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslCertificate * par1 = (QSslCertificate *) _qt5xhb_itemGetPtr(1);
    obj->setLocalCertificate ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLocalCertificate ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETLOCALCERTIFICATE2 )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = ISNIL(2)? (int) QSsl::Pem : hb_parni(2);
    obj->setLocalCertificate ( par1,  (QSsl::EncodingFormat) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setLocalCertificate ( const QSslCertificate & certificate )
//[2]void setLocalCertificate ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem )

HB_FUNC_STATIC( QSSLSOCKET_SETLOCALCERTIFICATE )
{
  if( ISNUMPAR(1) && ISQSSLCERTIFICATE(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_SETLOCALCERTIFICATE1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_SETLOCALCERTIFICATE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPeerVerifyDepth ( int depth )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETPEERVERIFYDEPTH )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPeerVerifyDepth ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPeerVerifyMode ( QSslSocket::PeerVerifyMode mode )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETPEERVERIFYMODE )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPeerVerifyMode (  (QSslSocket::PeerVerifyMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPrivateKey ( const QSslKey & key )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETPRIVATEKEY1 )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslKey * par1 = (QSslKey *) _qt5xhb_itemGetPtr(1);
    obj->setPrivateKey ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPrivateKey ( const QString & fileName, QSsl::KeyAlgorithm algorithm = QSsl::Rsa, QSsl::EncodingFormat format = QSsl::Pem, const QByteArray & passPhrase = QByteArray() )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETPRIVATEKEY2 )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = ISNIL(2)? (int) QSsl::Rsa : hb_parni(2);
    int par3 = ISNIL(3)? (int) QSsl::Pem : hb_parni(3);
    QByteArray par4 = ISNIL(4)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(4);
    obj->setPrivateKey ( par1,  (QSsl::KeyAlgorithm) par2,  (QSsl::EncodingFormat) par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setPrivateKey ( const QSslKey & key )
//[2]void setPrivateKey ( const QString & fileName, QSsl::KeyAlgorithm algorithm = QSsl::Rsa, QSsl::EncodingFormat format = QSsl::Pem, const QByteArray & passPhrase = QByteArray() )

HB_FUNC_STATIC( QSSLSOCKET_SETPRIVATEKEY )
{
  if( ISNUMPAR(1) && ISQSSLKEY(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_SETPRIVATEKEY1 );
  }
  else if( ISBETWEEN(1,4) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISQBYTEARRAY(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_SETPRIVATEKEY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setProtocol ( QSsl::SslProtocol protocol )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETPROTOCOL )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setProtocol (  (QSsl::SslProtocol) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setReadBufferSize ( qint64 size )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETREADBUFFERSIZE )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setReadBufferSize ( (qint64) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool setSocketDescriptor ( int socketDescriptor, SocketState state = ConnectedState, OpenMode openMode = ReadWrite )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETSOCKETDESCRIPTOR )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QAbstractSocket::ConnectedState : hb_parni(2);
    int par3 = ISNIL(3)? (int) QIODevice::ReadWrite : hb_parni(3);
    hb_retl( obj->setSocketDescriptor ( (int) hb_parni(1),  (QAbstractSocket::SocketState) par2,  (QIODevice::OpenMode) par3 ) );
  }
}


/*
void setSocketOption ( QAbstractSocket::SocketOption option, const QVariant & value )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETSOCKETOPTION )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
    obj->setSocketOption (  (QAbstractSocket::SocketOption) par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSslConfiguration ( const QSslConfiguration & configuration )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETSSLCONFIGURATION )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslConfiguration * par1 = (QSslConfiguration *) _qt5xhb_itemGetPtr(1);
    obj->setSslConfiguration ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant socketOption ( QAbstractSocket::SocketOption option )
*/
HB_FUNC_STATIC( QSSLSOCKET_SOCKETOPTION )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->socketOption (  (QAbstractSocket::SocketOption) par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QSslConfiguration sslConfiguration () const
*/
HB_FUNC_STATIC( QSSLSOCKET_SSLCONFIGURATION )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslConfiguration * ptr = new QSslConfiguration( obj->sslConfiguration (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSSLCONFIGURATION", true );
  }
}


/*
QList<QSslError> sslErrors () const
*/
HB_FUNC_STATIC( QSSLSOCKET_SSLERRORS )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QSslError> list = obj->sslErrors (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSSLERROR" );
    #else
    pDynSym = hb_dynsymFindName( "QSSLERROR" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QSslError *) new QSslError ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
bool waitForConnected ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QSSLSOCKET_WAITFORCONNECTED )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForConnected ( (int) ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}


/*
bool waitForDisconnected ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QSSLSOCKET_WAITFORDISCONNECTED )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForDisconnected ( (int) ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}


/*
bool waitForEncrypted ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QSSLSOCKET_WAITFORENCRYPTED )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForEncrypted ( (int) ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}


/*
virtual bool atEnd () const
*/
HB_FUNC_STATIC( QSSLSOCKET_ATEND )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->atEnd (  ) );
  }
}


/*
virtual qint64 bytesAvailable () const
*/
HB_FUNC_STATIC( QSSLSOCKET_BYTESAVAILABLE )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesAvailable (  ) );
  }
}


/*
virtual qint64 bytesToWrite () const
*/
HB_FUNC_STATIC( QSSLSOCKET_BYTESTOWRITE )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesToWrite (  ) );
  }
}


/*
virtual bool canReadLine () const
*/
HB_FUNC_STATIC( QSSLSOCKET_CANREADLINE )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->canReadLine (  ) );
  }
}


/*
virtual void close ()
*/
HB_FUNC_STATIC( QSSLSOCKET_CLOSE )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->close (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool waitForBytesWritten ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QSSLSOCKET_WAITFORBYTESWRITTEN )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForBytesWritten ( (int) ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}


/*
virtual bool waitForReadyRead ( int msecs = 30000 )
*/
HB_FUNC_STATIC( QSSLSOCKET_WAITFORREADYREAD )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->waitForReadyRead ( (int) ISNIL(1)? 30000 : hb_parni(1) ) );
  }
}


/*
void startClientEncryption ()
*/
HB_FUNC_STATIC( QSSLSOCKET_STARTCLIENTENCRYPTION )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->startClientEncryption (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void startServerEncryption ()
*/
HB_FUNC_STATIC( QSSLSOCKET_STARTSERVERENCRYPTION )
{
  QSslSocket * obj = (QSslSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->startServerEncryption (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void addDefaultCaCertificate ( const QSslCertificate & certificate )
*/
HB_FUNC_STATIC( QSSLSOCKET_ADDDEFAULTCACERTIFICATE )
{
  QSslCertificate * par1 = (QSslCertificate *) _qt5xhb_itemGetPtr(1);
  QSslSocket::addDefaultCaCertificate ( *par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static bool addDefaultCaCertificates ( const QString & path, QSsl::EncodingFormat encoding = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
*/
HB_FUNC_STATIC( QSSLSOCKET_ADDDEFAULTCACERTIFICATES1 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  int par2 = ISNIL(2)? (int) QSsl::Pem : hb_parni(2);
  int par3 = ISNIL(3)? (int) QRegExp::FixedString : hb_parni(3);
  hb_retl( QSslSocket::addDefaultCaCertificates ( par1,  (QSsl::EncodingFormat) par2,  (QRegExp::PatternSyntax) par3 ) );
}

/*
static void addDefaultCaCertificates ( const QList<QSslCertificate> & certificates )
*/
HB_FUNC_STATIC( QSSLSOCKET_ADDDEFAULTCACERTIFICATES2 )
{
  QList<QSslCertificate> par1;
  PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
  int i1;
  int nLen1 = hb_arrayLen(aList1);
  for (i1=0;i1<nLen1;i1++)
  {
    par1 << *(QSslCertificate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
  }
  QSslSocket::addDefaultCaCertificates ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]bool addDefaultCaCertificates ( const QString & path, QSsl::EncodingFormat encoding = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
//[2]void addDefaultCaCertificates ( const QList<QSslCertificate> & certificates )

HB_FUNC_STATIC( QSSLSOCKET_ADDDEFAULTCACERTIFICATES )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_ADDDEFAULTCACERTIFICATES1 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSSLSOCKET_ADDDEFAULTCACERTIFICATES2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QList<QSslCertificate> defaultCaCertificates ()
*/
HB_FUNC_STATIC( QSSLSOCKET_DEFAULTCACERTIFICATES )
{
  QList<QSslCertificate> list = QSslSocket::defaultCaCertificates (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QSSLCERTIFICATE" );
  #else
  pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QSslCertificate *) new QSslCertificate ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}


/*
static QList<QSslCipher> defaultCiphers ()
*/
HB_FUNC_STATIC( QSSLSOCKET_DEFAULTCIPHERS )
{
  QList<QSslCipher> list = QSslSocket::defaultCiphers (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QSSLCIPHER" );
  #else
  pDynSym = hb_dynsymFindName( "QSSLCIPHER" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QSslCipher *) new QSslCipher ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}


/*
static void setDefaultCaCertificates ( const QList<QSslCertificate> & certificates )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETDEFAULTCACERTIFICATES )
{
  QList<QSslCertificate> par1;
  PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
  int i1;
  int nLen1 = hb_arrayLen(aList1);
  for (i1=0;i1<nLen1;i1++)
  {
    par1 << *(QSslCertificate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
  }
  QSslSocket::setDefaultCaCertificates ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setDefaultCiphers ( const QList<QSslCipher> & ciphers )
*/
HB_FUNC_STATIC( QSSLSOCKET_SETDEFAULTCIPHERS )
{
  QList<QSslCipher> par1;
  PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
  int i1;
  int nLen1 = hb_arrayLen(aList1);
  for (i1=0;i1<nLen1;i1++)
  {
    par1 << *(QSslCipher *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
  }
  QSslSocket::setDefaultCiphers ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QList<QSslCipher> supportedCiphers ()
*/
HB_FUNC_STATIC( QSSLSOCKET_SUPPORTEDCIPHERS )
{
  QList<QSslCipher> list = QSslSocket::supportedCiphers (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QSSLCIPHER" );
  #else
  pDynSym = hb_dynsymFindName( "QSSLCIPHER" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QSslCipher *) new QSslCipher ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}


/*
static bool supportsSsl ()
*/
HB_FUNC_STATIC( QSSLSOCKET_SUPPORTSSSL )
{
  hb_retl( QSslSocket::supportsSsl (  ) );
}


/*
static QList<QSslCertificate> systemCaCertificates ()
*/
HB_FUNC_STATIC( QSSLSOCKET_SYSTEMCACERTIFICATES )
{
  QList<QSslCertificate> list = QSslSocket::systemCaCertificates (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QSSLCERTIFICATE" );
  #else
  pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QSslCertificate *) new QSslCertificate ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}




#pragma ENDDUMP
