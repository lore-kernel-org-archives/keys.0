Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C2C30E821
	for <keys@linux.kernel.org>; Thu, 23 Apr 2026 14:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776955867; cv=none; b=SfObDlGpcT9v3RzeW3gJyjVKTSegCStGKYQEMUivnpz4gz/yCAzeXND6evgU9/y2ofWMYexIxc1VhDClcAlR/LSGXvVyPTKn0AqQpGtUa+pyIiHfNhV9Y9QYgtrTG5+vhgFtZ66JDp59D921R2z4ZITN87zLDnrWvmr3tWR//no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776955867; c=relaxed/simple;
	bh=LJAIbCcwb2rv/xV6Qsw4UV7c/pAaCFW9cL/PuTBH+vU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CSQB/ngXpovuZN83SvrnTqThR6TueOm11KH6yuDtM+c4FWzdCnexmkP52bW28eRUiliHSJ6Fa0LeTtHqm0ecfcHA/PNoFxOIBf4awo94BOt0B12CZ963FEkGeFIBVCOlwL5Nm9S91YYA3sGbQt+lnqCwwfAilcsXGHwHkUdvZGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duxoMxAx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duxoMxAx"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74678C2BCAF;
	Thu, 23 Apr 2026 14:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776955866;
	bh=LJAIbCcwb2rv/xV6Qsw4UV7c/pAaCFW9cL/PuTBH+vU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=duxoMxAxT8FPbmyzY369Fq97lb+HN8hSinAtCiLzoVPgtBZS82GE163yd2PnoNuwj
	 6LC3t924fY89Z+jSuVA6GLdbRwVSf0xiDX2di6250GzSukoY9sjMI8YcJ4OVkZmasL
	 dJgwxvpdGkcVI0ONy7/f6VDf5kEdOMgBfZewYvc/ff+EUlkPcBertElAvLNrCPx584
	 0fCHxeeCfhZVfg5JWQdYYStXBAELzc83V4ib+GdhmdeNhCzEw+fPCkwsjuIN+6Qy84
	 K09Uuup99DmyCuAVOU+By+CrQ/pvk33brt8AaWdQQXivMNF8fi+wISxGdl+EKM+MuZ
	 xMIYgO35Sq/pw==
Date: Thu, 23 Apr 2026 10:51:05 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Theodore Tso <tytso@mit.edu>
Cc: keys@linux.kernel.org
Subject: Re: Update key expiration date for tytso@
Message-ID: <20260423-wandering-uncovered-salamander-50a73d@lemur>
References: <20260423140133.GA67985@macsyma-wired.lan>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260423140133.GA67985@macsyma-wired.lan>

On Thu, Apr 23, 2026 at 10:01:33AM -0400, Theodore Tso wrote:

> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks!

-K
