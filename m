Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B71271DDC9
	for <keys@linux.kernel.org>; Fri, 26 Jan 2024 16:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706287662; cv=none; b=IVp8+B72NMMeOcqrgdWoFOt1Tv7JyzgbVQK75AKmom4jfA/wnEorG005uWrtSL5D59Nf8Ib6pFnYw4KTtRlf2UObRh/cQEZ9AbErrb7Z5HIwFBRKF60YA3gt7nHj7ZA654U4xJfIQxNgStVOUnWkzPlJ7lSev7cNfJ5XRiYMZq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706287662; c=relaxed/simple;
	bh=dv1LFSQpuwTfKia2PjVWv28Ic/E04VNkVaIbYogaD9I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U0kRVttThsLVAn578YFx+sapWBeU0cnSSvvB/7JLgg5ul5N0NeUOrsUdog9rqFEZya5I3EixOuYOZkcWkJjzrgRLh1WmTV6VOTWMNmN118Kbqg4unFPRb5AhZClIvjEpJ4xzhY/wkxtw8yM6Hse6qugedYcs1znJ/lcTVV5h2LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=Z9uTB2SB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="Z9uTB2SB"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07FECC433F1;
	Fri, 26 Jan 2024 16:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1706287662;
	bh=dv1LFSQpuwTfKia2PjVWv28Ic/E04VNkVaIbYogaD9I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z9uTB2SBRAE5Tdb3hOTWeM2fXNqzzFnf7y29VfGM55hmGZciyzcezfAUbk1z5XWEs
	 Hx7ZsFUKCd9jY5fjy1wykNBqSOYd8gVfh9ftKLGUj/RNG2arDfgoYpvPBf4+tiv4Pz
	 3fjRDntBVKWNQvIjf5XEjx7HiNfXjmVsnsIVV+Eo=
Date: Fri, 26 Jan 2024 11:47:36 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Vegard Nossum <vegard.nossum@oracle.com>
Cc: keys@linux.kernel.org
Subject: Re: PGP key for Vegard Nossum <vegard.nossum@oracle.com>
Message-ID: <20240126-messy-stirring-doberman-6ea66a@lemur>
References: <79f361a3-fe6e-4643-aec7-84ee5a9d7dd4@oracle.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <79f361a3-fe6e-4643-aec7-84ee5a9d7dd4@oracle.com>

On Fri, Jan 26, 2024 at 12:06:35PM +0100, Vegard Nossum wrote:
> Hi,
> 
> Please find my PGP key (including 2 external signatures) attached.

Added, thanks.

-K
