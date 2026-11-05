Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=192.198.163.19
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793902559;
	b=S+Wvdl1fVJvA0Rp7eA2//zL8+XyM0bWN+q1jC04TXRewa5TfRhMo1r+vOLdqLrpU28Xb
	 rhaaShFciE2GyjyKnLom/GnP9lQBKutlnF1dBiXeD+e+NTmb/9jv/xuEywmXa6wntU6um
	 ZvR8C18kwvcM3Kvkf8ynGMiVfJZ0GDkbz+3pazdQB3S/hBV3Sa6Nr/pngVRqSTTOMAHo9
	 OjZnV1vior+S0XYl8GfwCNqHGNbNsjbMAlq16CCmkVYI+PSBf6xRocgKWDETdo/hUe8Jg
	 V3foTupkvf0VglOVmZlQFqD2bXjQT7SpuWNWy9n8A7BZQVJPoKQS8g5kX1vas7Wp8wA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793902559;
	h=DMARC-Filter:DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:
	 X-IronPort-AV:X-IronPort-AV:Received:X-CSE-ConnectionGUID:
	 X-CSE-MsgGUID:X-ExtLoop1:X-IronPort-AV:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	 Organization;
	bh=4m3CwhuoePw2M/FM+tS9slNJi8N2jXQ8CrOP1LVF1bc=;
	b=1ZPErwrsL/CSpzaoT7R3m3XJ6TPGL/UHyQ8fhEmLpReB0+dYOWk5Qn5uTB48IYVuZtb3
	 tJz7GES2TcrMVHVpF5v3Tl6EaWH+iNUZy/v0JCtEmjmC9Bdu2f3qF+cY3avtBi6aBByZp
	 n4oT/Df4ZiPq0EMzy5JJVuGwm8Yir87USKVl32v+9toJKgKCpJtPMYpViIJ0uLw9py3dJ
	 +fWTfkJ/5/NaYc9FwvYN4TEBkR7R15AH6SXkvbkXH8d0UpYMtkeQCzsA/bpzQamybdmob
	 EHQqJgoAJ3nGZ68Oiof7hAqABk4o9aFYE+wLYj3k0BGt/wYNDgr8Muic/ZkoK6p93vg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=intel.com;
	spf=pass smtp.mailfrom=intel.com;
	dkim=pass header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=E8mLmWuW;
	arc=none smtp.remote-ip=192.198.163.19
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC2B606A328
	for <keys@linux.kernel.org>; Thu,  5 Nov 2026 18:15:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org BAC2B606A328
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=E8mLmWuW
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1793902559; x=1825438559;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=rXz/IoxEiBO3Oge7yEXnqQ+uvCSNFITN4l71uj7V2f4=;
  b=E8mLmWuW3OEJ7qh1G9Ck5XCXQY2RyO/IOdqq83R61ebNRd/awq8K7sYZ
   oDHackyQL53aqwhZJWJFkuvDW0m0hx/siZ9ubUYiOIDSjnTmy4P4d+bRl
   lkCNZttFuhcO43ZjkbJS2/RmN505Lpinl+2ubX6Vmp9UmsaGkvCOlvKKt
   ashOHPZjfnlILXaGe3/yIUe/9hSenXDltXkz45cfASYy1nND4wcQyiAqY
   4k5gayq6dsNgcoAQYq7FotqQkeeG/e9okW5KK8hEzjDfdBRtZdBjjM7Go
   q9oTck9urN0Tm4AWK6fPOicBGiAaGcU7jMeKNQ0pf/6WddOBHJp6J7yAn
   A==;
X-CSE-ConnectionGUID: kvA61a9BSJqiWA7qYa+NZA==
X-CSE-MsgGUID: AcsiQZFURn6MGYe0WlKs5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11957"; a="2804409"
X-IronPort-AV: E=Sophos;i="6.27,197,1787036400"; 
   d="scan'208";a="2804409"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Nov 2026 10:15:46 -0800
X-CSE-ConnectionGUID: ndCrdoW5SaGat8BB0CMrkA==
X-CSE-MsgGUID: iRwfdR6gSG2apt/JkTGp/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,197,1787036400"; 
   d="scan'208";a="7245347"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.144])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Nov 2026 10:15:45 -0800
Date: Thu, 5 Nov 2026 20:15:43 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Updated key for Andy Shevchenko
Message-ID: <auzHz_yEFmTblvnf@ashevche-desk.local>
References: <arai7mgiftvKa5zz@ashevche-desk.local>
 <arbcPOClQ6xLhHvb@monoceros>
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <arbcPOClQ6xLhHvb@monoceros>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo

On Fri, Sep 25, 2026 at 10:42:53PM +0200, Uwe Kleine-König wrote:
> On Fri, Sep 25, 2026 at 07:35:58PM +0300, Andy Shevchenko wrote:
> > 
> > New signatures added
> > 
> > -----BEGIN PGP PUBLIC KEY BLOCK-----
> > 
> > mQINBFBQZgABEADCXO8OWYQr0Tcs7pPAkoTnwNU9ZvcciMNA5iL4ug1D2SMw8tf7
> > LIVyyY6QV9jqIKuc8Mn63jYPxTMfJaYU/g1sL6qCHbl5N06SpRxrc8aXIEFiEhEU
> > JABN9SGrKpK88BjCccfFBC42W/KLONuJudx73jehXh/qgUDp+5pyXrIJKQLlrkZA
> > [...]
> > AdRnOm0NGF1tIz9qjKpfLwhL4jqI+SF/cySk4JhvYS/eAkEcDvbM9EuiCUywRcrA
> > uNOsEM3mDXbhYc7rAVWzGA1cuwA18wesGipBG6UDA99fwF9nN31hd60qunegiLJw
> > wE9amTDpQt1tlsRxmm7MbuKILUZTCBSuWLZYZ+6deKmYwx0I8sj/KZm0EPGdiOAJ
> > uQY43InPsLJMfKosog5OchCl8g==
> > =owel
> > -----END PGP PUBLIC KEY BLOCK-----
> 
> This adds a signature by Rafael J. Wysocki on each of Andy's UID.
> 
> Acked-by: Uwe Kleine-König <ukleinek@kernel.org>

Thanks, is it still need to be processed?

I haven't got any confirmation email. OTOH I haven't checked the repository
for updates.

-- 
With Best Regards,
Andy Shevchenko


