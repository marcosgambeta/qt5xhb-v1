$header

#include "hbclass.ch"

CLASS QFileDevice INHERIT QIODevice

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

$prototype=FileError error() const
$method=|QFileDevice::FileError|error|

$prototype=virtual QString fileName() const
$method=|QString|fileName|

$prototype=bool flush()
$method=|bool|flush|

$prototype=int handle() const
$method=|int|handle|

$prototype=virtual Permissions permissions() const
$method=|QFileDevice::Permissions|permissions|

$prototype=virtual bool resize(qint64 sz)
$method=|bool|resize|qint64

$prototype=virtual bool setPermissions(Permissions permissions)
$method=|bool|setPermissions|QFileDevice::Permissions

$prototype=void unsetError()
$method=|void|unsetError|

$prototype=virtual bool atEnd() const
$method=|bool|atEnd|

$prototype=virtual void close()
$method=|void|close|

$prototype=virtual bool isSequential() const
$method=|bool|isSequential|

$prototype=virtual qint64 pos() const
$method=|qint64|pos|

$prototype=virtual bool seek(qint64 pos)
$method=|bool|seek|qint64

$prototype=virtual qint64 size() const
$method=|qint64|size|

#pragma ENDDUMP
