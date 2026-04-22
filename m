Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F43A23E33D
	for <keys@linux.kernel.org>; Wed, 22 Apr 2026 13:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776865155; cv=none; b=ToVfTuG4z9ykiSI/H3cfu4ps/43Bl3DA1IldTlZH0+ttahBLXqXW4nEkXEPvPH0zFj8vhrWFRHU1VvgsHTgXFJj6LcXid0lkScwcuVVmzVCGQGnbGS655yOYsBMb+P65VSJoW+gUa1xbv1nU/nb2czw/nf5eea+3ue86ZczXByY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776865155; c=relaxed/simple;
	bh=1ATFQG6eKH+PHnc1ESeeT7c+S3AUjZwSKV5TWVvP8jk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X6MZpuh6AOmOUbN/6F/smOaH6Yd4SnpAZFgT536bos5mbJIU+Gjr92i/CKiKKF5bjZ0FRdYOADfQO1LQfFwrFDkUdz+jJvCtgMFYgP1yCPg16Eosn1ZScF6eaa33lCxWnBO9oxNUynui/SUITCw42fXSrl3JL64KPnSyK0hw6Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qIi2UVM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qIi2UVM6"
Received: by smtp.kernel.org (Postfix)
	id 0C981C2BCB7; Wed, 22 Apr 2026 13:39:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9991C19425;
	Wed, 22 Apr 2026 13:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776865155;
	bh=1ATFQG6eKH+PHnc1ESeeT7c+S3AUjZwSKV5TWVvP8jk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qIi2UVM6Z/dN9fpqUT9LjyyrycEt9W2uxpFW/5USHG5+PA/ky2wVTqJRb7rkxEtsE
	 8F7QjbypMPcC+0vmiO52TAJVU7W+U7Fez2MUSviuoZvTja9E1igmLWYCcYqmiHEv5H
	 mEtbndX4/z05EHNvUvNmzXfBUnPkYnXvuR2ubSdAfjIKMjWFuJVx9+Aa57lJ9vCuKk
	 xO6j9rw9RIK22IvgDIydwVrP+9ZpYczGgASGph3yEQzDuWM2wp3bANp1rjySOtTdLg
	 kMaeO/M+HDAltqH+5UKQLrUBoz62ZoaRxR+TqT1l0yiEUkYd86uzW4MXP+Xe3e9bA6
	 ufTCzypU+7R8A==
Date: Wed, 22 Apr 2026 09:39:13 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Lorenzo Stoakes <ljs@kernel.org>, keys@kernel.org
Subject: Re: Replacement GPG key for Lorenzo Stoakes
Message-ID: <20260422-glaring-gainful-puffin-402e41@meerkat>
References: <aec18mJotTlfq155@lucifer>
 <20260421-capable-resilient-eel-37bec7@meerkat>
 <aeiMOm5bxDVPD70y@monoceros>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aeiMOm5bxDVPD70y@monoceros>

On Wed, Apr 22, 2026 at 11:19:36AM +0200, Uwe Kleine-König wrote:
> > > So to establish the required trust, I had the new key signed by people with
> > > the requisite level of trust. I attach the key here.
> > > 
> > > Could you please remove the old and replace it with the new?
> > 
> > Done now. Thanks!
> 
> I see you removed the old key from Lorenzo. I wonder if it would make
> sense to add the revoked key instead of deleting it to spread the
> information that it shouldn't be used any more.

If the key is lost, then this serves very little practical purpose, beyond
advertising that the old encryption subkey should not be used. Since we almost
never use encryption anyway (just attestation), then this is just effort for
very little gain.

-K
