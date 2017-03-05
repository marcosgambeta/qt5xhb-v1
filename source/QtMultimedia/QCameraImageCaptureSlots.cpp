/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QCameraImageCaptureSlots.h"


static SlotsQCameraImageCapture * s = NULL;

SlotsQCameraImageCapture::SlotsQCameraImageCapture(QObject *parent) : QObject(parent)
{
}

SlotsQCameraImageCapture::~SlotsQCameraImageCapture()
{
}

void SlotsQCameraImageCapture::bufferFormatChanged(QVideoFrame::PixelFormat format)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "bufferFormatChanged(QVideoFrame::PixelFormat)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pformat = hb_itemPutNI( NULL, (int) format );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pformat );
    hb_itemRelease( psender );
    hb_itemRelease( pformat );
  }
}

void SlotsQCameraImageCapture::captureDestinationChanged(QCameraImageCapture::CaptureDestinations destination)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "captureDestinationChanged(QCameraImageCapture::CaptureDestinations)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pdestination = hb_itemPutNI( NULL, (int) destination );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdestination );
    hb_itemRelease( psender );
    hb_itemRelease( pdestination );
  }
}

void SlotsQCameraImageCapture::error(int id, QCameraImageCapture::Error error, const QString & errorString)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(int,QCameraImageCapture::Error,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    PHB_ITEM perrorString = hb_itemPutC( NULL, (const char *) errorString.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pid, perror, perrorString );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
}

void SlotsQCameraImageCapture::imageAvailable(int id, const QVideoFrame & buffer)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "imageAvailable(int,QVideoFrame)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    PHB_ITEM pbuffer = hb_itemPutPtr( NULL, (QVideoFrame *) &buffer );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pid, pbuffer );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
    hb_itemRelease( pbuffer );
  }
}

void SlotsQCameraImageCapture::imageCaptured(int id, const QImage & preview)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "imageCaptured(int,QImage)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    PHB_ITEM ppreview = hb_itemPutPtr( NULL, (QImage *) &preview );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pid, ppreview );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
    hb_itemRelease( ppreview );
  }
}

void SlotsQCameraImageCapture::imageExposed(int id)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "imageExposed(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pid );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
  }
}

void SlotsQCameraImageCapture::imageMetadataAvailable(int id, const QString & key, const QVariant & value)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "imageMetadataAvailable(int,QString,QVariant)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    PHB_ITEM pkey = hb_itemPutC( NULL, (const char *) key.toLatin1().data() );
    PHB_ITEM pvalue = hb_itemPutPtr( NULL, (QVariant *) &value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pid, pkey, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
    hb_itemRelease( pkey );
    hb_itemRelease( pvalue );
  }
}

void SlotsQCameraImageCapture::imageSaved(int id, const QString & fileName)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "imageSaved(int,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    PHB_ITEM pfileName = hb_itemPutC( NULL, (const char *) fileName.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pid, pfileName );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
    hb_itemRelease( pfileName );
  }
}

void SlotsQCameraImageCapture::readyForCaptureChanged(bool ready)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "readyForCaptureChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pready = hb_itemPutL( NULL, ready );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pready );
    hb_itemRelease( psender );
    hb_itemRelease( pready );
  }
}

HB_FUNC( QCAMERAIMAGECAPTURE_ONBUFFERFORMATCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCapture(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "bufferFormatChanged(QVideoFrame::PixelFormat)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(bufferFormatChanged(QVideoFrame::PixelFormat)), s, SLOT(bufferFormatChanged(QVideoFrame::PixelFormat)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "bufferFormatChanged(QVideoFrame::PixelFormat)";
    ret = object->disconnect(object, SIGNAL(bufferFormatChanged(QVideoFrame::PixelFormat)), s, SLOT(bufferFormatChanged(QVideoFrame::PixelFormat)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}

HB_FUNC( QCAMERAIMAGECAPTURE_ONCAPTUREDESTINATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCapture(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "captureDestinationChanged(QCameraImageCapture::CaptureDestinations)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(captureDestinationChanged(QCameraImageCapture::CaptureDestinations)), s, SLOT(captureDestinationChanged(QCameraImageCapture::CaptureDestinations)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "captureDestinationChanged(QCameraImageCapture::CaptureDestinations)";
    ret = object->disconnect(object, SIGNAL(captureDestinationChanged(QCameraImageCapture::CaptureDestinations)), s, SLOT(captureDestinationChanged(QCameraImageCapture::CaptureDestinations)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}

HB_FUNC( QCAMERAIMAGECAPTURE_ONERROR )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCapture(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "error(int,QCameraImageCapture::Error,QString)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(error(int,QCameraImageCapture::Error,QString)), s, SLOT(error(int,QCameraImageCapture::Error,QString)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "error(int,QCameraImageCapture::Error,QString)";
    ret = object->disconnect(object, SIGNAL(error(int,QCameraImageCapture::Error,QString)), s, SLOT(error(int,QCameraImageCapture::Error,QString)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}

HB_FUNC( QCAMERAIMAGECAPTURE_ONIMAGEAVAILABLE )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCapture(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "imageAvailable(int,QVideoFrame)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(imageAvailable(int,QVideoFrame)), s, SLOT(imageAvailable(int,QVideoFrame)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "imageAvailable(int,QVideoFrame)";
    ret = object->disconnect(object, SIGNAL(imageAvailable(int,QVideoFrame)), s, SLOT(imageAvailable(int,QVideoFrame)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}

HB_FUNC( QCAMERAIMAGECAPTURE_ONIMAGECAPTURED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCapture(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "imageCaptured(int,QImage)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(imageCaptured(int,QImage)), s, SLOT(imageCaptured(int,QImage)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "imageCaptured(int,QImage)";
    ret = object->disconnect(object, SIGNAL(imageCaptured(int,QImage)), s, SLOT(imageCaptured(int,QImage)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}

HB_FUNC( QCAMERAIMAGECAPTURE_ONIMAGEEXPOSED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCapture(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "imageExposed(int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(imageExposed(int)), s, SLOT(imageExposed(int)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "imageExposed(int)";
    ret = object->disconnect(object, SIGNAL(imageExposed(int)), s, SLOT(imageExposed(int)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}

HB_FUNC( QCAMERAIMAGECAPTURE_ONIMAGEMETADATAAVAILABLE )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCapture(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "imageMetadataAvailable(int,QString,QVariant)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(imageMetadataAvailable(int,QString,QVariant)), s, SLOT(imageMetadataAvailable(int,QString,QVariant)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "imageMetadataAvailable(int,QString,QVariant)";
    ret = object->disconnect(object, SIGNAL(imageMetadataAvailable(int,QString,QVariant)), s, SLOT(imageMetadataAvailable(int,QString,QVariant)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}

HB_FUNC( QCAMERAIMAGECAPTURE_ONIMAGESAVED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCapture(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "imageSaved(int,QString)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(imageSaved(int,QString)), s, SLOT(imageSaved(int,QString)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "imageSaved(int,QString)";
    ret = object->disconnect(object, SIGNAL(imageSaved(int,QString)), s, SLOT(imageSaved(int,QString)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}

HB_FUNC( QCAMERAIMAGECAPTURE_ONREADYFORCAPTURECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraImageCapture(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "readyForCaptureChanged(bool)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(readyForCaptureChanged(bool)), s, SLOT(readyForCaptureChanged(bool)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "readyForCaptureChanged(bool)";
    ret = object->disconnect(object, SIGNAL(readyForCaptureChanged(bool)), s, SLOT(readyForCaptureChanged(bool)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}
