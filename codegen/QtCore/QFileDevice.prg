$header

#include "hbclass.ch"

CLASS QFileDevice INHERIT QIODevice

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD error
   METHOD fileName
   METHOD flush
   METHOD handle
   METHOD permissions
   METHOD resize
   METHOD setPermissions
   METHOD unsetError
   METHOD atEnd
   METHOD close
   METHOD isSequential
   METHOD pos
   METHOD seek
   METHOD size

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
FileError error() const
*/
$method=|QFileDevice::FileError|error|

/*
virtual QString fileName() const
*/
$method=|QString|fileName|

/*
bool flush()
*/
$method=|bool|flush|

/*
int handle() const
*/
$method=|int|handle|

/*
virtual Permissions permissions() const
*/
$method=|QFileDevice::Permissions|permissions|

/*
virtual bool resize(qint64 sz)
*/
$method=|bool|resize|qint64

/*
virtual bool setPermissions(Permissions permissions)
*/
$method=|bool|setPermissions|QFileDevice::Permissions

/*
void unsetError()
*/
$method=|void|unsetError|

/*
virtual bool atEnd() const
*/
$method=|bool|atEnd|

/*
virtual void close()
*/
$method=|void|close|

/*
virtual bool isSequential() const
*/
$method=|bool|isSequential|

/*
virtual qint64 pos() const
*/
$method=|qint64|pos|

/*
virtual bool seek(qint64 pos)
*/
$method=|bool|seek|qint64

/*
virtual qint64 size() const
*/
$method=|qint64|size|

#pragma ENDDUMP
