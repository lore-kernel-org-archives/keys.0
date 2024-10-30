Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FFE522315
	for <keys@linux.kernel.org>; Wed, 30 Oct 2024 12:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730292274; cv=none; b=JyEteeafOC+JiYqLOc0L4L7C/R95FVDghpceF3ZmYuibg52hdinTOgiLKAZSLZ/IOylOiPFpz52EvXoEmWaUcS/VOJqxOB46SfAxRpk280eOCy8vwDkumVWs7YExZLh9dT5VLCXkU82vrURz1Gud43AOKVXKZJhxzrxgJSQ3Q7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730292274; c=relaxed/simple;
	bh=UeOwh8bYjuyYzrNBG15K9T3gj8CrNqlR3kUPWgf7/E0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fbah8sKURmL5870aFSVf4NCFirJjP9d2K6c9oa2BvQIHQT/kzej+x6DQbVAOEACKyi7k41kngwLe/4KHNo109g/BWLmPIZjCaTIjdiexJNBenapojD8QchNOMrJnsuEn8+++xoD0WNx36frDteP0w7F3Wr3/077hASVyMFH/gBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=yGO/VBw0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="yGO/VBw0"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2176C4CEE3;
	Wed, 30 Oct 2024 12:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1730292273;
	bh=UeOwh8bYjuyYzrNBG15K9T3gj8CrNqlR3kUPWgf7/E0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=yGO/VBw01PuqSh1W05LFsKimM+YhYf4Z55cGznTYXbvaJqO035MH5nB/IBR3DIBPH
	 4XZbuMgFGG18JLqSFfLjTFVQswnXs6gvfeLqWPRdi1+ZheP6OtH908CkoNHnuqH3/k
	 Bj0NOzTkuQBTRUJZgFOS61vNffvTaeyeZ9LoO9WU=
Date: Wed, 30 Oct 2024 08:44:32 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Jarkko Sakkinen <jarkko@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Public Key Update
Message-ID: <20241030-auspicious-obedient-frigatebird-17f70f@lemur>
References: <D58MDYF2QCTX.3GRZV3JZ99E61@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <D58MDYF2QCTX.3GRZV3JZ99E61@kernel.org>

On Tue, Oct 29, 2024 at 11:49:39PM +0200, Jarkko Sakkinen wrote:
> This change updates associated identities. Matching changes have been
> uploaded to the keyservers.

Updated, thanks.

-K
