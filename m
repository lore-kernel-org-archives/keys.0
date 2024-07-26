Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D39D617B4FF
	for <keys@linux.kernel.org>; Fri, 26 Jul 2024 15:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722007623; cv=none; b=A2ed8QRu0ga3lddWQDYQqYiEoLRYp1tDEBQUOrU+K0FR0m0Qv4u7VT17dCxLAfg6LNhl5O8WfT5/Icf+0M0H72H7TOcHc7jzYnnH69CtDngcwBp1L9hsUZleRA3b96hQU5iJPAvPL4IlNkxxOvBkJ5RzSRiqFDRvSYE4qw2bCi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722007623; c=relaxed/simple;
	bh=N5FfRZg0sOzfiKJyDgPKW5yTloXMtd5BOyTiyy7jNO4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NjNVj9GX96dAIM43j/z4W70vWfW2f8ZecyOKr5oLyPrVRmoCz/z0S2qSOk31ObkWgVBDsTNCfUasNxrQYU5LN6KSaiQ1DQV0BmQEnLlF6UY1BLAYcPMt0EF2YfpufV2EfKxXJKdvZ36NW18POlWEWO/y37qYKzwkv35oiGk9ksk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=vhODc6Wt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="vhODc6Wt"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EFC8C32782;
	Fri, 26 Jul 2024 15:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1722007623;
	bh=N5FfRZg0sOzfiKJyDgPKW5yTloXMtd5BOyTiyy7jNO4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vhODc6WtEM/6pmXwNedh+j7K0a+h5GILE65bDh7V51whVSN1rzLCuxfiQCh71jEyA
	 WNKFvbnbqF0fH4DSZX+wYRxOOH49rhyd5hD1HjTed8lPWZ7aNCHvamqwwzRjiZCMkP
	 +XdV1EKItS9ZFdlDQ5xhtgUsCYri3HqjMl0arwyw=
Date: Fri, 26 Jul 2024 11:26:54 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Update konradybcio's key
Message-ID: <20240726-lumpy-notorious-rottweiler-db39bb@meerkat>
References: <cbe036ce-98ed-403e-afbf-09a89a6c9915@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cbe036ce-98ed-403e-afbf-09a89a6c9915@kernel.org>

On Fri, Jul 26, 2024 at 01:38:40PM GMT, Konrad Dybcio wrote:
> Hello,
> 
> please pull my updated key.
> 
> Konrad

> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.

-K
