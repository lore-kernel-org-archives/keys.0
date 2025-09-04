Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A241E230BFD
	for <keys@linux.kernel.org>; Thu,  4 Sep 2025 16:30:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757003427; cv=none; b=lwi672XCk1vmvQ1PRZP6V3aeQ94hgM8Dsou0hxjh5GlmhHIn8DaFwPXknhXXGD8aPmqPqVEuNtlcl2etalCKyQK8JEjCPkYrwAiJWmlKnF7pwIPOSmLqAa6nXgvaqKYGfGJ+M0A9nnFX7/+yizCSqSBytsUdpmSJ++xdVfSkonU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757003427; c=relaxed/simple;
	bh=9ZV5OFN2NmHMO2HPNkwN9BnR4NFJK66g3heaJ73hus0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ImGKYXqo5Ex+78c9ciCB2NkXKg4d0h0kcwqd52bEtqVAXAN4DYqdzphhiTQIvqJYE46YOVtTSKWrTgD6SyEsEpp6sxsbHrZWLKYZ8eOdAeu37cKMqIArKXiM5hzFEUrtkS8QrrEdy9zMSxJpdO0jvCYF9PJ/RILunftiZYhNwSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=VUxyrhNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="VUxyrhNl"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 127B2C4CEF0;
	Thu,  4 Sep 2025 16:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1757003427;
	bh=9ZV5OFN2NmHMO2HPNkwN9BnR4NFJK66g3heaJ73hus0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VUxyrhNlkeGG3NwgQpR/TonLA35fzAP3ALr9NnBq3eOWm1DqE9JzeSuaecTGRw01J
	 9IHMExHBAUJr6rkL8KLPAVyTjpFPPZSIQf/46+TUpWK/W3T9aXi91RC/SKGyQRymW/
	 wcxqu1UqR5VB4tjYAWu9UoUGE8P5XlXVXr90mx0g=
Date: Thu, 4 Sep 2025 12:30:25 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: update key expiry date
Message-ID: <20250904-prompt-salmon-of-chivalry-d4cdae@lemur>
References: <aLl93Kfxd5bcSLfS@ryzen>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aLl93Kfxd5bcSLfS@ryzen>

On Thu, Sep 04, 2025 at 01:54:04PM +0200, Niklas Cassel wrote:
> Hello kernel.org admins,
> 
> 
> I noticed that my key is about to expire in 20ish days,
> and I can see that you did a periodic update yesterday.
> 
> In order to avoid the chance that Linus will have have
> my updated key, could you please import my updated key?

Updated, thanks.

-K
