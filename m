Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E91B2638B2
	for <keys@linux.kernel.org>; Wed, 22 Oct 2025 17:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761153571; cv=none; b=DKQzR5VroWaGqKi29K9/7Sngp/hXqpE7qRHjRb/UkV7NMY1Qnu4+x8wNkekG3jXdW3wtwC4AmtWHP4MzIIZtusrdagXvO3dnyehyIewcT+s2oF/c5s2ru0a+FnbiMjNTqqD9yrNvvP+kBUSCnCNlAcHRxSgli0OBEVjqBbS5DDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761153571; c=relaxed/simple;
	bh=KNkWw1uQyD6eyPRqh93g5MQa6AAqMT/GDd8yYtQjeno=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZDUmBtdKevFyfcXZuAZgA2phJuy9Cl5Rsg7IFUpbNdYwPxY1ABFuAFYSFwaZcqwf6bNrp96yh7BUTsBqBNnhWbKz1xnRZLFU0cj02DHqQnZWFqPMP36+Q1ONIYbz3lKJwH6ue/BKU0nX65Z6o5+NbPKT57hjk/OwH79mPdB8yWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=t3vOyvIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="t3vOyvIp"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 959F2C4CEE7;
	Wed, 22 Oct 2025 17:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1761153570;
	bh=KNkWw1uQyD6eyPRqh93g5MQa6AAqMT/GDd8yYtQjeno=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t3vOyvIpDVx6oMRpQGRp2L8dxC+j35VZhXc4Zol8wzeK3MRaL2FhlnREqJGzX5e0C
	 1bLry7VjxAwxNJCv62AHlBSwmczQgr86aIZv0MX2bm6GruxsqK9jrNpW7a0BtvW0BC
	 uGFQ/1gAS2UbjvlQorFnlZiaBW27giLLfJdWpvB8=
Date: Wed, 22 Oct 2025 13:19:29 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Brian Masney <bmasney@redhat.com>
Cc: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	keys@linux.kernel.org
Subject: Re: Questiona about additional signatures on my key have not been
 synced to kernel-pgpkeys
Message-ID: <20251022-outrageous-hasty-spoonbill-b6bb0f@lemur>
References: <CABx5tqJP03jUj+xieVdG=wDjmEKAfqXYF03+tr0WvvbQ_OTG+w@mail.gmail.com>
 <z2gr5m6bvcel4vzugolc2m52wdsuuffekorx4upxagflrespvh@5xue6nt4dvnq>
 <aPkQtQzrSo30E0Zx@redhat.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aPkQtQzrSo30E0Zx@redhat.com>

On Wed, Oct 22, 2025 at 01:13:25PM -0400, Brian Masney wrote:
> Thanks for the detailed explanation. That makes sense. I sent my updated
> key with the additional signatures in the original email to this thread.

It's already updated, thanks.

-K
