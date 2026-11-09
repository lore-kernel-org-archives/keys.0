Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=198.175.65.19
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794226495;
	b=pG49+t8QXRcCeyThBk5ZFZSZZeHZhPSPlGNkblAo2GzNl4asBEahCELLUCcVcUMC7dZX
	 yBtDo6f1jVZhsNpE7Shav6dLQrdEImHV/s5beUChcDK79Lc93IcZ7ohuVKRyQ3mygdZbn
	 LWP45H4W3fEY3WMfzat2F8Tp4HzdShW7C4zlOX5DqO+HzBsks0LG2IyLCwcFJph8NxOw/
	 jm9dN+9SQ+ltZKn26+VYaoWyj+0QbJKHbxKwXz7R4jclIINq6BAOWrwx8qeyBmq0UCOrK
	 ntKl15hF+KiDwhs1iurGCnFMen6yRTlQYgr9wmp5vy8GWzg1cLzMXPfa9pLgBw8uNtA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794226495;
	h=DMARC-Filter:DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:
	 X-IronPort-AV:X-IronPort-AV:Received:X-CSE-ConnectionGUID:
	 X-CSE-MsgGUID:X-ExtLoop1:X-IronPort-AV:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	 Organization;
	bh=1fRY9nr4CyjrtTkcD/l6Aeqk3is6lsFXTaz4esNSCvM=;
	b=NGZL4JGYSQhpxV80yfLbVsMiOZjGoT2/tcTpUqye9T+2xeM91gHMa5AahIp+BS0FgAgY
	 G8POqpYL2y4whzJFopAeHFr49edtelkq7iBCUjAey84SXndVToQZ5jkAWjzGeTP6f0yEo
	 RjIm9MCKhSWgZ6NZniEOO71YLU+rbVsoK8ezZCn6IrzMFdMIym/LXnjSgQy1tUJ8olmi6
	 GsbpVccKGP6EfWZG05yH0qd6k9S9NSyvfAKW2RxP7ezBkEFi9E/A2KIKrD6vLi8PSVi2p
	 bFwFpSwgC+20xzp1+iEtlp9rHGEANZ4PjzYq1YDHS7B1W+I/Lh6gydHMQrTNNQIBc2A==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=intel.com;
	spf=pass smtp.mailfrom=intel.com;
	dkim=pass header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=btLkYdyn;
	arc=none smtp.remote-ip=198.175.65.19
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345F6606A33D
	for <keys@linux.kernel.org>; Mon,  9 Nov 2026 12:14:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 345F6606A33D
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=btLkYdyn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1794226494; x=1825762494;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=jMZC5Cc7CjJbK7PFN36f1Ojqplg7bGv/g/pUBznyBnM=;
  b=btLkYdynUQ9WBIXJALD6O2CCqIxlwTofNO3LGdoJ5FngIjWCMXqJiisZ
   ZNNpxxtalie0UTZBiyIx5XUF3l2CiY3lvO2aWhsnMIomMYrQwGGKkNFhN
   h3FkEiot9aJvY4oRvgXnYjn1Nt9+XrpE/hRYzJ8FR1UPfhcQ9fqT+XHz1
   4q9bZzG7qjR6jaBwCnp2WUcrdN46NWB4o6m5jJW7EM38ALHG2z36KdaUF
   gFaqO+pzPILbRg9RHMupDsP9gzRQnw/ne84KKZ4tyZuNwtzUMFJXipBO1
   sUuj12MoSCHTsJJsadtyKJ1tF87tmFTSaAeWjtS6LnDpmQLDp34ww3VNM
   A==;
X-CSE-ConnectionGUID: CgnrG86bTUG11pwSLyTaPg==
X-CSE-MsgGUID: YPo/OHcrQnmdfxwZ+E8p4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11960"; a="2986172"
X-IronPort-AV: E=Sophos;i="6.27,203,1787036400"; 
   d="scan'208";a="2986172"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Nov 2026 04:14:54 -0800
X-CSE-ConnectionGUID: wVDq/av7TYGQ9kcyPZQiNQ==
X-CSE-MsgGUID: mZH6UB0HSrWMB1GBZ3xDgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,203,1787036400"; 
   d="scan'208";a="7706544"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.144])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Nov 2026 04:14:53 -0800
Date: Mon, 9 Nov 2026 14:14:50 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Updated key for Andy Shevchenko
Message-ID: <avG5OpA-fPocYFpO@ashevche-desk.local>
References: <arai7mgiftvKa5zz@ashevche-desk.local>
 <arbcPOClQ6xLhHvb@monoceros>
 <auzHz_yEFmTblvnf@ashevche-desk.local>
 <auzf4TLteDjm6m14@monoceros>
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
In-Reply-To: <auzf4TLteDjm6m14@monoceros>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo

On Thu, Nov 05, 2026 at 09:01:30PM +0100, Uwe Kleine-König wrote:
> On Thu, Nov 05, 2026 at 08:15:43PM +0200, Andy Shevchenko wrote:
> > On Fri, Sep 25, 2026 at 10:42:53PM +0200, Uwe Kleine-König wrote:
> > > On Fri, Sep 25, 2026 at 07:35:58PM +0300, Andy Shevchenko wrote:
> > > > 
> > > > New signatures added
> > > > 
> > > > -----BEGIN PGP PUBLIC KEY BLOCK-----
> > > > 
> > > > mQINBFBQZgABEADCXO8OWYQr0Tcs7pPAkoTnwNU9ZvcciMNA5iL4ug1D2SMw8tf7
> > > > LIVyyY6QV9jqIKuc8Mn63jYPxTMfJaYU/g1sL6qCHbl5N06SpRxrc8aXIEFiEhEU
> > > > JABN9SGrKpK88BjCccfFBC42W/KLONuJudx73jehXh/qgUDp+5pyXrIJKQLlrkZA
> > > > [...]
> > > > AdRnOm0NGF1tIz9qjKpfLwhL4jqI+SF/cySk4JhvYS/eAkEcDvbM9EuiCUywRcrA
> > > > uNOsEM3mDXbhYc7rAVWzGA1cuwA18wesGipBG6UDA99fwF9nN31hd60qunegiLJw
> > > > wE9amTDpQt1tlsRxmm7MbuKILUZTCBSuWLZYZ+6deKmYwx0I8sj/KZm0EPGdiOAJ
> > > > uQY43InPsLJMfKosog5OchCl8g==
> > > > =owel
> > > > -----END PGP PUBLIC KEY BLOCK-----
> > > 
> > > This adds a signature by Rafael J. Wysocki on each of Andy's UID.
> > > 
> > > Acked-by: Uwe Kleine-König <ukleinek@kernel.org>
> > 
> > Thanks, is it still need to be processed?
> > 
> > I haven't got any confirmation email. OTOH I haven't checked the repository
> > for updates.
> 
> these confirmation mails are not sent consistently. Your update was applied,
> see
> https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/commit/?id=8c538c5cc15ff97f05b4a0a068ff137aeb97a27e
> .

Understand, thanks for informing me.

-- 
With Best Regards,
Andy Shevchenko


