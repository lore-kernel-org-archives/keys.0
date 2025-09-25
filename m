Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0461C2DCF77
	for <keys@linux.kernel.org>; Thu, 25 Sep 2025 14:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758811792; cv=none; b=ksPZBJm9XJRJA+FM6WuKsBZm5KAaqWjOiTdi5oWrG8H8HYRtl+6XGAB7DOGRPhC1DN+/hl2I2f3H5qPyiU24AiNZLlGDNY7ot6cbeMUXFMR+zJCARyf+i9whNmlVgj5AC/rQbs5lW7lgQlMKLnrf7s0eR2AbFdROfqjMRpbuFjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758811792; c=relaxed/simple;
	bh=UWRF2K3Fqcvk6hosGoNwGp8SZiMtH/mHsFu0+s/AT3Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gGE9es1tG50C4sWZWh5+Ukq+MTR0g8dgZf/xNxjKspce6NSfDYWCqDuM5bjVSoii0wwN387etKTaX/bttLUbwmFahFbxqWDITdlegiWbptCenb0sUS5VjttlSIl3DHjvStMZFRhxtsLG6GnNXojlfD2hhMYV3aeVUVMlE6kGwdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=APQn27UJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="APQn27UJ"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F515C4CEF0;
	Thu, 25 Sep 2025 14:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1758811791;
	bh=UWRF2K3Fqcvk6hosGoNwGp8SZiMtH/mHsFu0+s/AT3Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=APQn27UJ5Z0QCWxpdbF9Isa2cxv8hbm0BBgYFxzCS6ci2LEZeSRt9Fe0rYpceQN5C
	 PkPR5VaViC7VPIdqeXNdQAQSLv5NFBYeDMzSh/oXbdJY9ai+87GoYBAHfGAVe3lVUB
	 KZOPu5qJ1fGk4jv5S4ozd0B9o5IRV6VA6SCt+Vgw=
Date: Thu, 25 Sep 2025 10:49:47 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Joseph Salisbury <joseph.salisbury@oracle.com>
Cc: keys@linux.kernel.org
Subject: Re: joseph.salisbury@oracle.com
Message-ID: <20250925-bald-mayfly-of-brotherhood-33abf0@lemur>
References: <ad5d44bd-687d-4c72-bcdb-b9256ae4a19b@oracle.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ad5d44bd-687d-4c72-bcdb-b9256ae4a19b@oracle.com>

On Wed, Sep 24, 2025 at 01:02:53PM -0400, Joseph Salisbury wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Thanks for the update, but looks like there's a minor problem in one of your
UIDs still:

    uid                      Joseph Salisbury jsalisbury@kernel.org

The address should be inside angle brackets:
    
    uid                      Joseph Salisbury <jsalisbury@kernel.org>

You should be able to just delete that UID and create a new one, then
resubmit.

-K
