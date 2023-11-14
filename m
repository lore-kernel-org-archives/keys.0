Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1653FB23
	for <keys@linux.kernel.org>; Tue, 14 Nov 2023 14:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="Pp34uclE"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B7A2C433C7;
	Tue, 14 Nov 2023 14:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1699973382;
	bh=eCZMDTbfXPRPJe7bOWneNGKJ6zez7PH+b56xtVXjxog=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Pp34uclE/lIzCDwOqp75jI84huXjiTX5IV9IOmneLhwANhAxcJ6ckzV+uH3OewEqJ
	 ffusRv2TgGVrt3D59TyLJyu2gktjqmmb62pKoC3dus2xEDqGDthksu1AqYxcHMN6V7
	 F04ghWnGb+jy+fC2IaEhUp+4LXiHojDeieKKHI9I=
Date: Tue, 14 Nov 2023 09:49:41 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: keys@linux.kernel.org
Subject: Re: update to my key
Message-ID: <20231114-skilled-dachshund-of-success-cf5a56@nitro>
References: <20231114224312.2a023996@canb.auug.org.au>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231114224312.2a023996@canb.auug.org.au>

On Tue, Nov 14, 2023 at 10:43:12PM +1100, Stephen Rothwell wrote:
> 
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks!

-K
