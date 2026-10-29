Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=198.175.65.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793289637;
	b=iYqmrVeRsz+kPJDWcn35Z/yxJVgeJXu6y+VAycTXkxKr3+3cBeKT1KmXSxZGFcAmBOr2
	 aTkh0qtCKA0yccYjKh6AApP99uVY1+iO9Ix1oVuJqPt1dO/LsigFnLeR362k1/FmWmnnW
	 Xfb0xu4oJ+Iw4SF8TYoWsPJpGjAzcmnDTXaz52wqw0dMimIli81d5FYkCUb5926ljOlAf
	 bhwNNUfH4W9x2cEanHATzqxI4zqUkFYqNmutt+RD9L54FrclO2HdgcsSZPSnAXbSCE4Jl
	 Ed68ZjmJUdX7ag749bq17hkkCSocyhtjgsz+/jLfjbwLELXdwW/S3zuYy/+iGFeatFw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793289637;
	h=DMARC-Filter:DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:
	 X-IronPort-AV:X-IronPort-AV:Received:X-CSE-ConnectionGUID:
	 X-CSE-MsgGUID:X-ExtLoop1:X-IronPort-AV:Received:Date:From:To:Cc:
	 Subject:Message-ID:MIME-Version:Content-Type:Content-Disposition;
	bh=78Bu7VNlf8k64FRgNYuYTJn7Apl1Lq3BOg6jJLcOIV8=;
	b=XqYHPu5NiycZQslo7l3oMtKjcYOeomxZiRr8y+w0k8D05qt0Wbhx036Xwh2QahkgMBli
	 vgs3b9adb3pqck72UlUeAscYoRcTfWWNqXYPyW2Bsen56fFM6Y4mWt5zjrRq9DDCrOurJ
	 LwRAm6SxUfg3siabX8U1G3lpSGYpU8Dsaw0MWtq/CaR/WmyoCg60di+KW5BRk2wmyKLYZ
	 WuODbWHPXc8vxAwrBDiSoMx6lFMmrBfuGHy/FJe1jMTYE0znqvY+AhDUBB7ga/DXG1qXK
	 X1lXBphxpKYZBwIeplSHnrdxgt3EJ1T3KXfQqOQ4I3HT5gQuT9lJkAVdbpI0zbEBR4Q==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=linux.intel.com;
	spf=pass smtp.mailfrom=linux.intel.com;
	dkim=pass header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=Kprl7Nv3;
	arc=none smtp.remote-ip=198.175.65.18
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A16606A31D
	for <keys@linux.kernel.org>; Thu, 29 Oct 2026 16:00:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 36A16606A31D
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=Kprl7Nv3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1793289636; x=1824825636;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=78Bu7VNlf8k64FRgNYuYTJn7Apl1Lq3BOg6jJLcOIV8=;
  b=Kprl7Nv3dj4nTHi0jdepIphyRgvImGaYnPFLYbxKHIW7MCeiPgJ0fNe0
   NvIZ+Sm06JUIblAeL1GCRMrk044HpLA9xRzyV1iU9jKwfbVcPKJQLtw15
   5s+z9TfKLYshqGkJhxbZdWOI1AChiIqCm4UXRg+uN6qwTUP+S8Wud0zGy
   ZkknmZY8VIZgbpbXxmdelA/uFjMURNmjFAUZLkb1MWRVZZ+LMi9Km25ka
   Pp7DGspovgjXmm662X6I1TEs7yv4GmYqawJRjvqCNIvb1AuwdHZWLp9d5
   EU5YrxQRtzbwcA2VJcV7fQXu9NW8uCAXmE1JY+dyRBnIX+G/GS65GSotY
   g==;
X-CSE-ConnectionGUID: ItELIqehQPa8cFpLGz9Rxw==
X-CSE-MsgGUID: +AeX90X7TXKNwvYeGjPcYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11949"; a="2052563"
X-IronPort-AV: E=Sophos;i="6.27,184,1787036400"; 
   d="asc'?scan'208";a="2052563"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Oct 2026 09:00:36 -0700
X-CSE-ConnectionGUID: ymlfLWOGRJC8YIc5xoPF8g==
X-CSE-MsgGUID: EdL8yhpIQSy2ziIaogNbNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,184,1787036400"; 
   d="asc'?scan'208";a="5142930"
Received: from yilunxu-optiplex-7050.sh.intel.com (HELO localhost) ([10.239.47.46])
  by orviesa001.jf.intel.com with ESMTP; 29 Oct 2026 09:00:35 -0700
Date: Thu, 29 Oct 2026 23:54:24 +0800
From: Xu Yilun <yilun.xu@linux.intel.com>
To: keys@linux.kernel.org, keys@kernel.org, yilun.xu@intel.com
Cc: yilun.xu@linux.intel.com
Subject: Update GPG Key
Message-ID: <auNsMD1eXbmYD13I@yilunxu-OptiPlex-7050>
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="YU2KWmyUmU0I+Drv"
Content-Disposition: inline


--YU2KWmyUmU0I+Drv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


--YU2KWmyUmU0I+Drv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="E2C8D72186AC3949.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
JUI78lVWYWu2XQdzfqkBme7hXOnmadRKZ+k=
=XZTm
-----END PGP PUBLIC KEY BLOCK-----

--YU2KWmyUmU0I+Drv--
