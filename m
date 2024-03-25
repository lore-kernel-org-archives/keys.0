Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FD801BF24
	for <keys@linux.kernel.org>; Mon, 25 Mar 2024 19:30:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711395003; cv=none; b=dNrpF13keG/RN9Mk5gjV9JwDfGZXM9j3z0gT+rm55TKgEZyXXF3q5nhdYAOIR9On7KUMNKXuRSrOu7lOtpbZ0r5KA9+fY9fDQ+/LjszqqzsGi9Sq6tIT3evKMeDAUxvp7TxoOST6yYVtyEEmTPeqO1blSsAagUZWc7WdFaClVvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711395003; c=relaxed/simple;
	bh=DyYMDOykAXbrlmvXHG8n728bubDaFhnAw3LJHTTmTB0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OEzZwpDcALnXupjGimtuZj7IgYpYpYVDcLw1Ge3cBpyT6RywICyRVSvCkQiIyqlqMtfi77oLZkPOoGUSOQ6B7QAbYeXTzr+jennU7G6FhzhHPfsF2eKVNaH5sO3egP3gphlzmOZjLI3ZwzmGRBxlRi46F+p8Bt59VtgnNXvvE4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=LYm3X79A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="LYm3X79A"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C9A7C433C7;
	Mon, 25 Mar 2024 19:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1711395002;
	bh=DyYMDOykAXbrlmvXHG8n728bubDaFhnAw3LJHTTmTB0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LYm3X79A5PK6MbDLd0M3ePLiIsOHfOBN+QaGFcVOPkrOAz1dfOYyCpR1M51qZPDOI
	 eZwNEtANfS/yiiWQuT+4fUyLUPs84GGYhM7LoRmi/YqMZjw06lSxxGqACr3utl0E27
	 xYLiAblpj0zWeyRqsEthFU+h35uqbUycRynjhTGM=
Date: Mon, 25 Mar 2024 15:30:01 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Wei Liu <wei.liu@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Update Wei's key
Message-ID: <20240325-transparent-functional-spaniel-138c6e@meerkat>
References: <Zf566RaRKsVibeqg@liuwe-devbox-debian-v2>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Zf566RaRKsVibeqg@liuwe-devbox-debian-v2>

On Sat, Mar 23, 2024 at 06:47:05AM +0000, Wei Liu wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.

-K
